#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.5.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::rust2dart::IntoIntoDart;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

use crate::types::BoltzError;
use crate::types::BtcLnSwap;
use crate::types::KeyPair;
use crate::types::Network;
use crate::types::PreImage;
use crate::types::SwapType;

// Section: wire functions

fn wire_swap_fees__static_method__Api_impl(
    port_: MessagePort,
    boltz_url: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap::<_, _, _, (f64, f64), _>(
        WrapInfo {
            debug_name: "swap_fees__static_method__Api",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_boltz_url = boltz_url.wire2api();
            move |task_callback| Api::swap_fees(api_boltz_url)
        },
    )
}
fn wire_new_btc_ln_submarine__static_method__Api_impl(
    port_: MessagePort,
    mnemonic: impl Wire2Api<String> + UnwindSafe,
    index: impl Wire2Api<u64> + UnwindSafe,
    invoice: impl Wire2Api<String> + UnwindSafe,
    network: impl Wire2Api<Network> + UnwindSafe,
    electrum_url: impl Wire2Api<String> + UnwindSafe,
    boltz_url: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap::<_, _, _, BtcLnSwap, _>(
        WrapInfo {
            debug_name: "new_btc_ln_submarine__static_method__Api",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_mnemonic = mnemonic.wire2api();
            let api_index = index.wire2api();
            let api_invoice = invoice.wire2api();
            let api_network = network.wire2api();
            let api_electrum_url = electrum_url.wire2api();
            let api_boltz_url = boltz_url.wire2api();
            move |task_callback| {
                Api::new_btc_ln_submarine(
                    api_mnemonic,
                    api_index,
                    api_invoice,
                    api_network,
                    api_electrum_url,
                    api_boltz_url,
                )
            }
        },
    )
}
fn wire_new_btc_ln_reverse__static_method__Api_impl(
    port_: MessagePort,
    mnemonic: impl Wire2Api<String> + UnwindSafe,
    index: impl Wire2Api<u64> + UnwindSafe,
    out_amount: impl Wire2Api<u64> + UnwindSafe,
    network: impl Wire2Api<Network> + UnwindSafe,
    electrum_url: impl Wire2Api<String> + UnwindSafe,
    boltz_url: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap::<_, _, _, BtcLnSwap, _>(
        WrapInfo {
            debug_name: "new_btc_ln_reverse__static_method__Api",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_mnemonic = mnemonic.wire2api();
            let api_index = index.wire2api();
            let api_out_amount = out_amount.wire2api();
            let api_network = network.wire2api();
            let api_electrum_url = electrum_url.wire2api();
            let api_boltz_url = boltz_url.wire2api();
            move |task_callback| {
                Api::new_btc_ln_reverse(
                    api_mnemonic,
                    api_index,
                    api_out_amount,
                    api_network,
                    api_electrum_url,
                    api_boltz_url,
                )
            }
        },
    )
}
fn wire_btc_ln_reverse_claim__static_method__Api_impl(
    port_: MessagePort,
    swap: impl Wire2Api<BtcLnSwap> + UnwindSafe,
    fee: impl Wire2Api<u64> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap::<_, _, _, String, _>(
        WrapInfo {
            debug_name: "btc_ln_reverse_claim__static_method__Api",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_swap = swap.wire2api();
            let api_fee = fee.wire2api();
            move |task_callback| Api::btc_ln_reverse_claim(api_swap, api_fee)
        },
    )
}
fn wire_swap_status__static_method__Api_impl(
    port_: MessagePort,
    boltz_url: impl Wire2Api<String> + UnwindSafe,
    id: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap::<_, _, _, String, _>(
        WrapInfo {
            debug_name: "swap_status__static_method__Api",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_boltz_url = boltz_url.wire2api();
            let api_id = id.wire2api();
            move |task_callback| Api::swap_status(api_boltz_url, api_id)
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<Network> for i32 {
    fn wire2api(self) -> Network {
        match self {
            0 => Network::Testnet,
            1 => Network::LiquidTestnet,
            _ => unreachable!("Invalid variant for Network: {}", self),
        }
    }
}

impl Wire2Api<SwapType> for i32 {
    fn wire2api(self) -> SwapType {
        match self {
            0 => SwapType::Submarine,
            1 => SwapType::Reverse,
            _ => unreachable!("Invalid variant for SwapType: {}", self),
        }
    }
}
impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for BoltzError {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.kind.into_into_dart().into_dart(),
            self.message.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for BoltzError {}
impl rust2dart::IntoIntoDart<BoltzError> for BoltzError {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for BtcLnSwap {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.id.into_into_dart().into_dart(),
            self.kind.into_into_dart().into_dart(),
            self.network.into_into_dart().into_dart(),
            self.keys.into_into_dart().into_dart(),
            self.preimage.into_into_dart().into_dart(),
            self.redeem_script.into_into_dart().into_dart(),
            self.invoice.into_into_dart().into_dart(),
            self.out_amount.into_into_dart().into_dart(),
            self.onchain_address.into_into_dart().into_dart(),
            self.electrum_url.into_into_dart().into_dart(),
            self.boltz_url.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for BtcLnSwap {}
impl rust2dart::IntoIntoDart<BtcLnSwap> for BtcLnSwap {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for KeyPair {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.secret_key.into_into_dart().into_dart(),
            self.public_key.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for KeyPair {}
impl rust2dart::IntoIntoDart<KeyPair> for KeyPair {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for Network {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Testnet => 0,
            Self::LiquidTestnet => 1,
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Network {}
impl rust2dart::IntoIntoDart<Network> for Network {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for PreImage {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.value.into_into_dart().into_dart(),
            self.sha256.into_into_dart().into_dart(),
            self.hash160.into_into_dart().into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for PreImage {}
impl rust2dart::IntoIntoDart<PreImage> for PreImage {
    fn into_into_dart(self) -> Self {
        self
    }
}

impl support::IntoDart for SwapType {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Submarine => 0,
            Self::Reverse => 1,
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for SwapType {}
impl rust2dart::IntoIntoDart<SwapType> for SwapType {
    fn into_into_dart(self) -> Self {
        self
    }
}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use self::io::*;
