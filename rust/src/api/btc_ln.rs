use super::{
    error::BoltzError,
    types::{BtcSwapScriptStr, Chain, KeyPair, PreImage, SwapType},
};
use crate::util::{ensure_http_prefix, strip_tcp_prefix};

use boltz_client::{
    bitcoin::{
        consensus::encode::{deserialize, serialize},
        Transaction, Txid,
    },
    boltz::Cooperative,
    electrum_client::ElectrumApi,
    network::electrum::ElectrumConfig,
    swaps::{boltz::BoltzApiClientV2, magic_routing},
    util::secrets::Preimage,
    BtcSwapScript, BtcSwapTx, Keypair, PublicKey, ToHex,
};
use flutter_rust_bridge::frb;
use serde_json::Value;

#[frb(dart_metadata=("freezed"))]
pub struct BtcLnSwap {
    pub id: String,
    pub kind: SwapType,
    pub network: Chain,
    pub keys: KeyPair,
    pub key_index: u64,
    pub preimage: PreImage,
    pub swap_script: BtcSwapScriptStr,
    pub invoice: String,
    pub script_address: String,
    // pub out_address: Option<String>,
    pub out_amount: u64,
    pub electrum_url: String,
    pub boltz_url: String,
    pub referral_id: Option<String>,
}
impl BtcLnSwap {
    pub fn new(
        id: String,
        kind: SwapType,
        network: Chain,
        keys: KeyPair,
        key_index: u64,
        preimage: PreImage,
        swap_script: BtcSwapScriptStr,
        invoice: String,
        script_address: String,
        out_amount: u64,
        electrum_url: String,
        boltz_url: String,
        referral_id: Option<String>,
    ) -> BtcLnSwap {
        BtcLnSwap {
            id,
            kind,
            network,
            keys,
            key_index,
            preimage,
            swap_script,
            invoice,
            electrum_url: strip_tcp_prefix(&electrum_url),
            boltz_url: ensure_http_prefix(&boltz_url),
            script_address,
            out_amount,
            referral_id: Some(referral_id.unwrap_or_default()),
        }
    }

    pub fn new_submarine(
        mnemonic: String,
        index: u64,
        invoice: String,
        network: Chain,
        electrum_url: String,
        boltz_url: String,
        referral_id: Option<String>,
    ) -> Result<BtcLnSwap, BoltzError> {
        let swap_type = SwapType::Submarine;
        let electrum_url = strip_tcp_prefix(&electrum_url);
        let refund_keypair = match KeyPair::generate(mnemonic, network.into(), index, swap_type) {
            Ok(keypair) => keypair,
            Err(err) => return Err(err.into()),
        };
        let refund_kps: Keypair = refund_keypair.clone().try_into()?;
        let preimage = match Preimage::from_invoice_str(&invoice) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&boltz_url));
        let create_swap_req = boltz_client::swaps::boltz::CreateSubmarineRequest {
            from: "BTC".to_string(),
            to: "BTC".to_string(),
            invoice: invoice.to_string(),
            referral_id: referral_id.clone(),
            refund_public_key: refund_kps.public_key().into(),
            pair_hash: None,
            webhook: None,
        };
        let refund_pubkey = PublicKey {
            compressed: true,
            inner: refund_kps.public_key(),
        };
        let create_swap_response = boltz_client.post_swap_req(&create_swap_req)?;
        create_swap_response.validate(&invoice, &refund_pubkey, network.into())?;
        let swap_script = BtcSwapScript::submarine_from_swap_resp(
            &create_swap_response,
            refund_kps.public_key().into(),
        )?;
        let script_address = swap_script.to_address(network.into())?.to_string();
        Ok(BtcLnSwap::new(
            create_swap_response.id,
            swap_type,
            network,
            refund_keypair,
            index,
            preimage.into(),
            swap_script.into(),
            invoice,
            script_address,
            create_swap_response.expected_amount,
            strip_tcp_prefix(&electrum_url),
            ensure_http_prefix(&boltz_url),
            referral_id,
        ))
    }

    pub fn coop_close_submarine(&self) -> Result<(), BoltzError> {
        let network_config =
            ElectrumConfig::new(self.network.into(), &self.electrum_url, true, true, 10);
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&self.boltz_url));
        let swap_script: BtcSwapScript = self.swap_script.clone().try_into()?;
        // WE SHOULD NOT NEED TO MAKE A TX, JUST A SCRIPT
        let tx = match BtcSwapTx::new_refund(
            swap_script,
            &self.script_address,
            &network_config,
            ensure_http_prefix(&self.boltz_url),
            self.id.clone(),
        ) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        let ckp: Keypair = self.keys.clone().try_into()?;
        let claim_tx_response = boltz_client.get_submarine_claim_tx_details(&self.id)?;
        let (partial_sig, pub_nonce) = tx.partial_sign(
            &ckp,
            &claim_tx_response.pub_nonce,
            &claim_tx_response.transaction_hash,
        )?;
        boltz_client.post_submarine_claim_tx_details(&self.id, pub_nonce, partial_sig)?;
        Ok(())
    }

    pub fn new_reverse(
        mnemonic: String,
        index: u64,
        out_amount: u64,
        out_address: Option<String>,
        network: Chain,
        electrum_url: String,
        boltz_url: String,
        description: Option<String>,
        referral_id: Option<String>,
    ) -> Result<BtcLnSwap, BoltzError> {
        let swap_type = SwapType::Reverse;
        let claim_keypair = match KeyPair::generate(mnemonic, network.into(), index, swap_type) {
            Ok(keypair) => keypair,
            Err(err) => return Err(err.into()),
        };
        let preimage = Preimage::new();
        let ckp: Keypair = claim_keypair.clone().try_into()?;
        let claim_public_key = PublicKey {
            compressed: true,
            inner: ckp.public_key(),
        };
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&boltz_url));
        let create_reverse_req = if out_address.is_some() {
            let address = out_address.unwrap();
            boltz_client::swaps::boltz::CreateReverseRequest {
                invoice_amount: out_amount as u32,
                from: "BTC".to_string(),
                to: "BTC".to_string(),
                preimage_hash: preimage.sha256,
                claim_public_key,
                referral_id: referral_id.clone(),
                address: Some(address.clone()),
                address_signature: Some(magic_routing::sign_address(&address, &ckp)?.to_string()),
                webhook: None,
                description: description,
                description_hash: None,
            }
        } else {
            boltz_client::swaps::boltz::CreateReverseRequest {
                invoice_amount: out_amount as u32,
                from: "BTC".to_string(),
                to: "BTC".to_string(),
                preimage_hash: preimage.sha256,
                claim_public_key,
                referral_id: referral_id.clone(),
                address: None,
                address_signature: None,
                description: None,
                description_hash: None,
                webhook: None,
            }
        };
        let create_swap_response = boltz_client.post_reverse_req(create_reverse_req)?;
        create_swap_response.validate(&preimage, &claim_public_key, network.into())?;
        let swap_script =
            BtcSwapScript::reverse_from_swap_resp(&create_swap_response, claim_public_key)?;
        let script_address = swap_script.to_address(network.into())?.to_string();
        Ok(BtcLnSwap::new(
            create_swap_response.id,
            swap_type,
            network.into(),
            claim_keypair,
            index,
            preimage.into(),
            swap_script.into(),
            create_swap_response.invoice,
            script_address,
            out_amount,
            strip_tcp_prefix(&electrum_url),
            ensure_http_prefix(&boltz_url),
            referral_id,
        ))
    }

    pub fn claim(
        &self,
        out_address: String,
        abs_fee: u64,
        try_cooperate: bool,
    ) -> Result<String, BoltzError> {
        if self.kind == SwapType::Submarine {
            return Err(BoltzError {
                kind: "Input".to_string(),
                message: "Submarine swaps are not claimable".to_string(),
            });
        } else {
            ()
        }
        // let our_keys: PublicKey = PublicKey::from_str(&self.keys.public_key).unwrap();
        let id: String = self.id.clone();
        let network_config =
            ElectrumConfig::new(self.network.into(), &self.electrum_url, true, true, 10);
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&self.boltz_url));
        let swap_script: BtcSwapScript = self.swap_script.clone().try_into()?;
        let script_balance = match swap_script.get_balance(&network_config) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        if script_balance.0 > 0 || script_balance.1 > 0 {
            let tx = match BtcSwapTx::new_claim(
                swap_script,
                out_address,
                &network_config,
                ensure_http_prefix(&self.boltz_url),
                self.id.clone(),
            ) {
                Ok(result) => result,
                Err(e) => return Err(e.into()),
            };
            let ckp: Keypair = self.keys.clone().try_into()?;
            let preimage = self.preimage.clone();
            let signed: Transaction = match tx.sign_claim(
                &ckp,
                &preimage.try_into()?,
                abs_fee,
                if try_cooperate {
                    Some(Cooperative {
                        boltz_api: &boltz_client,
                        swap_id: id,
                        pub_nonce: None,
                        partial_sig: None,
                    })
                } else {
                    None
                },
            ) {
                Ok(result) => result,
                Err(e) => return Err(e.into()),
            };
            let serialized_tx: Vec<u8> = serialize(&signed);
            // let txid = match tx.broadcast(&signed, &network_config) {
            //     Ok(result) => result,
            //     Err(e) => return Err(e.into()),
            // };
            Ok(serialized_tx.to_hex())
        } else {
            return Err(BoltzError {
                kind: "Script".to_string(),
                message: "Script is not funded yet!".to_string(),
            });
        }
    }

    pub fn refund(
        &self,
        out_address: String,
        abs_fee: u64,
        try_cooperate: bool,
    ) -> Result<String, BoltzError> {
        if self.kind == SwapType::Reverse {
            return Err(BoltzError {
                kind: "Input".to_string(),
                message: "Reverse swaps are not refundable".to_string(),
            });
        } else {
            ()
        }
        let network_config =
            ElectrumConfig::new(self.network.into(), &self.electrum_url, true, true, 10);
        let swap_script: BtcSwapScript = self.swap_script.clone().try_into()?;
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&self.boltz_url));
        let id: String = self.id.clone();
        let script_balance = match swap_script.get_balance(&network_config) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        if script_balance.0 > 0 || script_balance.1 > 0 {
            let tx = match BtcSwapTx::new_refund(
                swap_script.clone(),
                &out_address,
                &network_config,
                ensure_http_prefix(&self.boltz_url),
                self.id.clone(),
            ) {
                Ok(result) => result,
                Err(e) => return Err(e.into()),
            };
            let ckp: Keypair = self.keys.clone().try_into()?;
            let signed = match tx.sign_refund(
                &ckp,
                abs_fee,
                if try_cooperate {
                    Some(Cooperative {
                        boltz_api: &boltz_client,
                        swap_id: id,
                        pub_nonce: None,
                        partial_sig: None,
                    })
                } else {
                    None
                },
            ) {
                Ok(result) => result,
                Err(e) => return Err(e.into()),
            };
            let serialized_tx: Vec<u8> = serialize(&signed);
            Ok(serialized_tx.to_hex())
        } else {
            return Err(BoltzError {
                kind: "Script".to_string(),
                message: "Script is not funded yet!".to_string(),
            });
        }
    }

    pub fn broadcast_local(&self, signed_hex: String) -> Result<String, BoltzError> {
        let signed_bytes = hex::decode(&signed_hex)
            .map_err(|e| BoltzError::new("HexDecode".to_string(), e.to_string()))?;

        let network_config = ElectrumConfig::new(
            self.network.into(),
            &strip_tcp_prefix(&self.electrum_url),
            true,
            true,
            10,
        );
        let txid: Txid = match network_config
            .build_client()?
            .transaction_broadcast_raw(&signed_bytes)
        {
            Ok(r) => r,
            Err(e) => return Err(BoltzError::new("Electrum".to_string(), e.to_string())),
        };
        Ok(txid.to_string())
    }

    pub fn broadcast_boltz(&self, signed_hex: String) -> Result<String, BoltzError> {
        let boltz_client = BoltzApiClientV2::new(&ensure_http_prefix(&self.boltz_url));
        let txid = match boltz_client.broadcast_tx(self.network.into(), &signed_hex) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        Ok(extract_id(txid)?)
    }

    pub fn tx_size(&self) -> Result<usize, BoltzError> {
        if self.kind == SwapType::Submarine {
            return Err(BoltzError {
                kind: "Input".to_string(),
                message: "Submarine swaps are not claimable".to_string(),
            });
        } else {
            ()
        }
        let network_config = ElectrumConfig::new(
            self.network.clone().into(),
            &self.electrum_url,
            true,
            true,
            10,
        );
        // okay to use script address, we are just chekcing size
        let swap_script: BtcSwapScript = self.swap_script.clone().try_into()?;
        let tx = match BtcSwapTx::new_claim(
            swap_script.clone(),
            self.script_address.clone(),
            &network_config,
            ensure_http_prefix(&self.boltz_url),
            self.id.clone(),
        ) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        let ckp: Keypair = self.keys.clone().try_into()?;
        let size = match tx.size(&ckp, &self.preimage.clone().try_into()?) {
            Ok(result) => result,
            Err(e) => return Err(e.into()),
        };
        Ok(size)
    }
}
fn extract_id(response: Value) -> Result<String, BoltzError> {
    // Attempt to access the `id` field directly
    match response.get("id") {
        Some(id_value) if id_value.is_string() => Ok(id_value.as_str().unwrap().to_string()),
        _ => Err(BoltzError::new(
            "BoltzApi".to_string(),
            "TxId not found in boltz response".to_string(),
        )),
    }
}
