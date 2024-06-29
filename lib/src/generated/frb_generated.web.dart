// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/btc_ln.dart';
import 'api/chain_swap.dart';
import 'api/error.dart';
import 'api/fees.dart';
import 'api/lbtc_ln.dart';
import 'api/types.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class BoltzCoreApiImplPlatform extends BaseApiImpl<BoltzCoreWire> {
  BoltzCoreApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_ReverseFeesAndLimitsPtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_SubmarineFeesAndLimitsPtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits;

  @protected
  ReverseFeesAndLimits
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic raw);

  @protected
  SubmarineFeesAndLimits
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic raw);

  @protected
  ReverseFeesAndLimits
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic raw);

  @protected
  SubmarineFeesAndLimits
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  BoltzError dco_decode_boltz_error(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  BtcLnSwap dco_decode_box_autoadd_btc_ln_swap(dynamic raw);

  @protected
  BtcSwapScriptStr dco_decode_box_autoadd_btc_swap_script_str(dynamic raw);

  @protected
  ChainSwap dco_decode_box_autoadd_chain_swap(dynamic raw);

  @protected
  Fees dco_decode_box_autoadd_fees(dynamic raw);

  @protected
  KeyPair dco_decode_box_autoadd_key_pair(dynamic raw);

  @protected
  LBtcSwapScriptStr dco_decode_box_autoadd_l_btc_swap_script_str(dynamic raw);

  @protected
  LbtcLnSwap dco_decode_box_autoadd_lbtc_ln_swap(dynamic raw);

  @protected
  PreImage dco_decode_box_autoadd_pre_image(dynamic raw);

  @protected
  BtcLnSwap dco_decode_btc_ln_swap(dynamic raw);

  @protected
  BtcSwapScriptStr dco_decode_btc_swap_script_str(dynamic raw);

  @protected
  Chain dco_decode_chain(dynamic raw);

  @protected
  ChainFees dco_decode_chain_fees(dynamic raw);

  @protected
  ChainFeesAndLimits dco_decode_chain_fees_and_limits(dynamic raw);

  @protected
  ChainSwap dco_decode_chain_swap(dynamic raw);

  @protected
  ChainSwapDirection dco_decode_chain_swap_direction(dynamic raw);

  @protected
  DecodedInvoice dco_decode_decoded_invoice(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  Fees dco_decode_fees(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  KeyPair dco_decode_key_pair(dynamic raw);

  @protected
  LBtcSwapScriptStr dco_decode_l_btc_swap_script_str(dynamic raw);

  @protected
  LbtcLnSwap dco_decode_lbtc_ln_swap(dynamic raw);

  @protected
  Limits dco_decode_limits(dynamic raw);

  @protected
  List<int> dco_decode_list_prim_u_8_loose(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  PreImage dco_decode_pre_image(dynamic raw);

  @protected
  SwapType dco_decode_swap_type(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  int dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  ReverseFeesAndLimits
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          SseDeserializer deserializer);

  @protected
  SubmarineFeesAndLimits
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          SseDeserializer deserializer);

  @protected
  ReverseFeesAndLimits
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          SseDeserializer deserializer);

  @protected
  SubmarineFeesAndLimits
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  BoltzError sse_decode_boltz_error(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  BtcLnSwap sse_decode_box_autoadd_btc_ln_swap(SseDeserializer deserializer);

  @protected
  BtcSwapScriptStr sse_decode_box_autoadd_btc_swap_script_str(
      SseDeserializer deserializer);

  @protected
  ChainSwap sse_decode_box_autoadd_chain_swap(SseDeserializer deserializer);

  @protected
  Fees sse_decode_box_autoadd_fees(SseDeserializer deserializer);

  @protected
  KeyPair sse_decode_box_autoadd_key_pair(SseDeserializer deserializer);

  @protected
  LBtcSwapScriptStr sse_decode_box_autoadd_l_btc_swap_script_str(
      SseDeserializer deserializer);

  @protected
  LbtcLnSwap sse_decode_box_autoadd_lbtc_ln_swap(SseDeserializer deserializer);

  @protected
  PreImage sse_decode_box_autoadd_pre_image(SseDeserializer deserializer);

  @protected
  BtcLnSwap sse_decode_btc_ln_swap(SseDeserializer deserializer);

  @protected
  BtcSwapScriptStr sse_decode_btc_swap_script_str(SseDeserializer deserializer);

  @protected
  Chain sse_decode_chain(SseDeserializer deserializer);

  @protected
  ChainFees sse_decode_chain_fees(SseDeserializer deserializer);

  @protected
  ChainFeesAndLimits sse_decode_chain_fees_and_limits(
      SseDeserializer deserializer);

  @protected
  ChainSwap sse_decode_chain_swap(SseDeserializer deserializer);

  @protected
  ChainSwapDirection sse_decode_chain_swap_direction(
      SseDeserializer deserializer);

  @protected
  DecodedInvoice sse_decode_decoded_invoice(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  Fees sse_decode_fees(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  KeyPair sse_decode_key_pair(SseDeserializer deserializer);

  @protected
  LBtcSwapScriptStr sse_decode_l_btc_swap_script_str(
      SseDeserializer deserializer);

  @protected
  LbtcLnSwap sse_decode_lbtc_ln_swap(SseDeserializer deserializer);

  @protected
  Limits sse_decode_limits(SseDeserializer deserializer);

  @protected
  List<int> sse_decode_list_prim_u_8_loose(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  PreImage sse_decode_pre_image(SseDeserializer deserializer);

  @protected
  SwapType sse_decode_swap_type(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  int sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  String cst_encode_String(String raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  List<dynamic> cst_encode_boltz_error(BoltzError raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_String(raw.kind), cst_encode_String(raw.message)];
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_btc_ln_swap(BtcLnSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_btc_ln_swap(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_btc_swap_script_str(
      BtcSwapScriptStr raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_btc_swap_script_str(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_chain_swap(ChainSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_chain_swap(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_fees(Fees raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_fees(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_key_pair(KeyPair raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_key_pair(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_l_btc_swap_script_str(
      LBtcSwapScriptStr raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_l_btc_swap_script_str(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_lbtc_ln_swap(LbtcLnSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_lbtc_ln_swap(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_pre_image(PreImage raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_pre_image(raw);
  }

  @protected
  List<dynamic> cst_encode_btc_ln_swap(BtcLnSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_String(raw.id),
      cst_encode_swap_type(raw.kind),
      cst_encode_chain(raw.network),
      cst_encode_key_pair(raw.keys),
      cst_encode_pre_image(raw.preimage),
      cst_encode_btc_swap_script_str(raw.swapScript),
      cst_encode_String(raw.invoice),
      cst_encode_String(raw.scriptAddress),
      cst_encode_u_64(raw.outAmount),
      cst_encode_String(raw.electrumUrl),
      cst_encode_String(raw.boltzUrl),
      cst_encode_opt_String(raw.referralId)
    ];
  }

  @protected
  List<dynamic> cst_encode_btc_swap_script_str(BtcSwapScriptStr raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_swap_type(raw.swapType),
      cst_encode_opt_String(raw.fundingAddrs),
      cst_encode_String(raw.hashlock),
      cst_encode_String(raw.receiverPubkey),
      cst_encode_u_32(raw.locktime),
      cst_encode_String(raw.senderPubkey)
    ];
  }

  @protected
  List<dynamic> cst_encode_chain_fees(ChainFees raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_f_64(raw.percentage),
      cst_encode_u_64(raw.userLockup),
      cst_encode_u_64(raw.userClaim),
      cst_encode_u_64(raw.server)
    ];
  }

  @protected
  List<dynamic> cst_encode_chain_fees_and_limits(ChainFeesAndLimits raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_limits(raw.btcLimits),
      cst_encode_limits(raw.lbtcLimits),
      cst_encode_chain_fees(raw.btcFees),
      cst_encode_chain_fees(raw.lbtcFees)
    ];
  }

  @protected
  List<dynamic> cst_encode_chain_swap(ChainSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_String(raw.id),
      cst_encode_bool(raw.isTestnet),
      cst_encode_chain_swap_direction(raw.direction),
      cst_encode_key_pair(raw.refundKeys),
      cst_encode_key_pair(raw.claimKeys),
      cst_encode_pre_image(raw.preimage),
      cst_encode_btc_swap_script_str(raw.btcScriptStr),
      cst_encode_l_btc_swap_script_str(raw.lbtcScriptStr),
      cst_encode_String(raw.scriptAddress),
      cst_encode_u_64(raw.outAmount),
      cst_encode_String(raw.btcElectrumUrl),
      cst_encode_String(raw.lbtcElectrumUrl),
      cst_encode_String(raw.boltzUrl),
      cst_encode_opt_String(raw.referralId),
      cst_encode_String(raw.blindingKey)
    ];
  }

  @protected
  List<dynamic> cst_encode_decoded_invoice(DecodedInvoice raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_u_64(raw.msats),
      cst_encode_u_64(raw.expiry),
      cst_encode_u_64(raw.expiresIn),
      cst_encode_u_64(raw.expiresAt),
      cst_encode_bool(raw.isExpired),
      cst_encode_String(raw.network),
      cst_encode_u_64(raw.cltvExpDelta),
      cst_encode_opt_String(raw.bip21),
      cst_encode_String(raw.preimageHash)
    ];
  }

  @protected
  List<dynamic> cst_encode_fees(Fees raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_String(raw.boltzUrl)];
  }

  @protected
  List<dynamic> cst_encode_key_pair(KeyPair raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_String(raw.secretKey), cst_encode_String(raw.publicKey)];
  }

  @protected
  List<dynamic> cst_encode_l_btc_swap_script_str(LBtcSwapScriptStr raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_swap_type(raw.swapType),
      cst_encode_opt_String(raw.fundingAddrs),
      cst_encode_String(raw.hashlock),
      cst_encode_String(raw.receiverPubkey),
      cst_encode_u_32(raw.locktime),
      cst_encode_String(raw.senderPubkey),
      cst_encode_String(raw.blindingKey)
    ];
  }

  @protected
  List<dynamic> cst_encode_lbtc_ln_swap(LbtcLnSwap raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_String(raw.id),
      cst_encode_swap_type(raw.kind),
      cst_encode_chain(raw.network),
      cst_encode_key_pair(raw.keys),
      cst_encode_pre_image(raw.preimage),
      cst_encode_l_btc_swap_script_str(raw.swapScript),
      cst_encode_String(raw.invoice),
      cst_encode_u_64(raw.outAmount),
      cst_encode_String(raw.scriptAddress),
      cst_encode_String(raw.blindingKey),
      cst_encode_String(raw.electrumUrl),
      cst_encode_String(raw.boltzUrl),
      cst_encode_opt_String(raw.referralId)
    ];
  }

  @protected
  List<dynamic> cst_encode_limits(Limits raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [cst_encode_u_64(raw.minimal), cst_encode_u_64(raw.maximal)];
  }

  @protected
  List<int> cst_encode_list_prim_u_8_loose(List<int> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  Uint8List cst_encode_list_prim_u_8_strict(Uint8List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw;
  }

  @protected
  String? cst_encode_opt_String(String? raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return raw == null ? null : cst_encode_String(raw);
  }

  @protected
  List<dynamic> cst_encode_pre_image(PreImage raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return [
      cst_encode_String(raw.value),
      cst_encode_String(raw.sha256),
      cst_encode_String(raw.hash160)
    ];
  }

  @protected
  Object cst_encode_u_64(int raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return castNativeBigInt(raw);
  }

  @protected
  int cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
      ReverseFeesAndLimits raw);

  @protected
  int cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
      SubmarineFeesAndLimits raw);

  @protected
  int cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
      ReverseFeesAndLimits raw);

  @protected
  int cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
      SubmarineFeesAndLimits raw);

  @protected
  bool cst_encode_bool(bool raw);

  @protected
  int cst_encode_chain(Chain raw);

  @protected
  int cst_encode_chain_swap_direction(ChainSwapDirection raw);

  @protected
  double cst_encode_f_64(double raw);

  @protected
  int cst_encode_i_32(int raw);

  @protected
  int cst_encode_swap_type(SwapType raw);

  @protected
  int cst_encode_u_32(int raw);

  @protected
  int cst_encode_u_8(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  int cst_encode_usize(int raw);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          ReverseFeesAndLimits self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          SubmarineFeesAndLimits self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          ReverseFeesAndLimits self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          SubmarineFeesAndLimits self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_boltz_error(BoltzError self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_btc_ln_swap(
      BtcLnSwap self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_btc_swap_script_str(
      BtcSwapScriptStr self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_chain_swap(
      ChainSwap self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_fees(Fees self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_key_pair(KeyPair self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_l_btc_swap_script_str(
      LBtcSwapScriptStr self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_lbtc_ln_swap(
      LbtcLnSwap self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_pre_image(
      PreImage self, SseSerializer serializer);

  @protected
  void sse_encode_btc_ln_swap(BtcLnSwap self, SseSerializer serializer);

  @protected
  void sse_encode_btc_swap_script_str(
      BtcSwapScriptStr self, SseSerializer serializer);

  @protected
  void sse_encode_chain(Chain self, SseSerializer serializer);

  @protected
  void sse_encode_chain_fees(ChainFees self, SseSerializer serializer);

  @protected
  void sse_encode_chain_fees_and_limits(
      ChainFeesAndLimits self, SseSerializer serializer);

  @protected
  void sse_encode_chain_swap(ChainSwap self, SseSerializer serializer);

  @protected
  void sse_encode_chain_swap_direction(
      ChainSwapDirection self, SseSerializer serializer);

  @protected
  void sse_encode_decoded_invoice(
      DecodedInvoice self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_fees(Fees self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_key_pair(KeyPair self, SseSerializer serializer);

  @protected
  void sse_encode_l_btc_swap_script_str(
      LBtcSwapScriptStr self, SseSerializer serializer);

  @protected
  void sse_encode_lbtc_ln_swap(LbtcLnSwap self, SseSerializer serializer);

  @protected
  void sse_encode_limits(Limits self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_loose(List<int> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_pre_image(PreImage self, SseSerializer serializer);

  @protected
  void sse_encode_swap_type(SwapType self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);
}

// Section: wire_class

class BoltzCoreWire implements BaseWire {
  BoltzCoreWire.fromExternalLibrary(ExternalLibrary lib);

  void wire_btc_ln_swap_claim(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_btc_ln_swap_claim(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_btc_ln_swap_coop_close_submarine(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_btc_ln_swap_coop_close_submarine(port_, that);

  void wire_btc_ln_swap_new(
          NativePortType port_,
          String id,
          int kind,
          int network,
          List<dynamic> keys,
          List<dynamic> preimage,
          List<dynamic> swap_script,
          String invoice,
          String script_address,
          Object out_amount,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_btc_ln_swap_new(
          port_,
          id,
          kind,
          network,
          keys,
          preimage,
          swap_script,
          invoice,
          script_address,
          out_amount,
          electrum_url,
          boltz_url,
          referral_id);

  void wire_btc_ln_swap_new_reverse(
          NativePortType port_,
          String mnemonic,
          Object index,
          Object out_amount,
          String? out_address,
          int network,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_btc_ln_swap_new_reverse(
          port_,
          mnemonic,
          index,
          out_amount,
          out_address,
          network,
          electrum_url,
          boltz_url,
          referral_id);

  void wire_btc_ln_swap_new_submarine(
          NativePortType port_,
          String mnemonic,
          Object index,
          String invoice,
          int network,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_btc_ln_swap_new_submarine(port_, mnemonic, index, invoice,
          network, electrum_url, boltz_url, referral_id);

  void wire_btc_ln_swap_refund(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_btc_ln_swap_refund(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_btc_ln_swap_tx_size(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_btc_ln_swap_tx_size(port_, that);

  void wire_chain_swap_claim(
          NativePortType port_,
          List<dynamic> that,
          String out_address,
          String refund_address,
          Object abs_fee,
          bool try_cooperate) =>
      wasmModule.wire_chain_swap_claim(
          port_, that, out_address, refund_address, abs_fee, try_cooperate);

  void wire_chain_swap_new(
          NativePortType port_,
          String id,
          bool is_testnet,
          int direction,
          List<dynamic> refund_keys,
          List<dynamic> claim_keys,
          List<dynamic> preimage,
          List<dynamic> btc_script_str,
          List<dynamic> lbtc_script_str,
          String script_address,
          Object out_amount,
          String btc_electrum_url,
          String lbtc_electrum_url,
          String boltz_url,
          String? referral_id,
          String blinding_key) =>
      wasmModule.wire_chain_swap_new(
          port_,
          id,
          is_testnet,
          direction,
          refund_keys,
          claim_keys,
          preimage,
          btc_script_str,
          lbtc_script_str,
          script_address,
          out_amount,
          btc_electrum_url,
          lbtc_electrum_url,
          boltz_url,
          referral_id,
          blinding_key);

  void wire_chain_swap_new_swap(
          NativePortType port_,
          int direction,
          String mnemonic,
          Object index,
          int amount,
          bool is_testnet,
          String btc_electrum_url,
          String lbtc_electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_chain_swap_new_swap(
          port_,
          direction,
          mnemonic,
          index,
          amount,
          is_testnet,
          btc_electrum_url,
          lbtc_electrum_url,
          boltz_url,
          referral_id);

  void wire_chain_swap_refund(NativePortType port_, List<dynamic> that,
          String refund_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_chain_swap_refund(
          port_, that, refund_address, abs_fee, try_cooperate);

  void wire_boltz_error_new(
          NativePortType port_, String kind, String message) =>
      wasmModule.wire_boltz_error_new(port_, kind, message);

  void wire_fees_chain(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_fees_chain(port_, that);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_fees_new(String boltz_url) => wasmModule.wire_fees_new(boltz_url);

  void wire_fees_reverse(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_fees_reverse(port_, that);

  void wire_fees_submarine(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_fees_submarine(port_, that);

  void wire_lbtc_ln_swap_broadcast_tx(
          NativePortType port_, List<dynamic> that, List<int> signed_bytes) =>
      wasmModule.wire_lbtc_ln_swap_broadcast_tx(port_, that, signed_bytes);

  void wire_lbtc_ln_swap_claim(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_lbtc_ln_swap_claim(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_lbtc_ln_swap_claim_bytes(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_lbtc_ln_swap_claim_bytes(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_lbtc_ln_swap_coop_close_submarine(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_lbtc_ln_swap_coop_close_submarine(port_, that);

  void wire_lbtc_ln_swap_new(
          NativePortType port_,
          String id,
          int kind,
          int network,
          List<dynamic> keys,
          List<dynamic> preimage,
          List<dynamic> swap_script,
          String invoice,
          Object out_amount,
          String out_address,
          String blinding_key,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_lbtc_ln_swap_new(
          port_,
          id,
          kind,
          network,
          keys,
          preimage,
          swap_script,
          invoice,
          out_amount,
          out_address,
          blinding_key,
          electrum_url,
          boltz_url,
          referral_id);

  void wire_lbtc_ln_swap_new_reverse(
          NativePortType port_,
          String mnemonic,
          Object index,
          Object out_amount,
          String? out_address,
          int network,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_lbtc_ln_swap_new_reverse(
          port_,
          mnemonic,
          index,
          out_amount,
          out_address,
          network,
          electrum_url,
          boltz_url,
          referral_id);

  void wire_lbtc_ln_swap_new_submarine(
          NativePortType port_,
          String mnemonic,
          Object index,
          String invoice,
          int network,
          String electrum_url,
          String boltz_url,
          String? referral_id) =>
      wasmModule.wire_lbtc_ln_swap_new_submarine(port_, mnemonic, index,
          invoice, network, electrum_url, boltz_url, referral_id);

  void wire_lbtc_ln_swap_refund(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_lbtc_ln_swap_refund(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_lbtc_ln_swap_refund_bytes(NativePortType port_, List<dynamic> that,
          String out_address, Object abs_fee, bool try_cooperate) =>
      wasmModule.wire_lbtc_ln_swap_refund_bytes(
          port_, that, out_address, abs_fee, try_cooperate);

  void wire_lbtc_ln_swap_tx_size(NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_lbtc_ln_swap_tx_size(port_, that);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_btc_swap_script_str_new(
              int swap_type,
              String? funding_addrs,
              String hashlock,
              String receiver_pubkey,
              int locktime,
              String sender_pubkey) =>
          wasmModule.wire_btc_swap_script_str_new(swap_type, funding_addrs,
              hashlock, receiver_pubkey, locktime, sender_pubkey);

  void wire_decoded_invoice_from_string(
          NativePortType port_, String s, String? boltz_url) =>
      wasmModule.wire_decoded_invoice_from_string(port_, s, boltz_url);

  void wire_key_pair_generate(NativePortType port_, String mnemonic,
          int network, Object index, int swap_type) =>
      wasmModule.wire_key_pair_generate(
          port_, mnemonic, network, index, swap_type);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_key_pair_new(String secret_key, String public_key) =>
          wasmModule.wire_key_pair_new(secret_key, public_key);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_l_btc_swap_script_str_new(
              int swap_type,
              String? funding_addrs,
              String hashlock,
              String receiver_pubkey,
              int locktime,
              String sender_pubkey,
              String blinding_key) =>
          wasmModule.wire_l_btc_swap_script_str_new(swap_type, funding_addrs,
              hashlock, receiver_pubkey, locktime, sender_pubkey, blinding_key);

  void wire_pre_image_generate(NativePortType port_) =>
      wasmModule.wire_pre_image_generate(port_);

  dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_pre_image_new(String value, String sha256, String hash160) =>
          wasmModule.wire_pre_image_new(value, sha256, hash160);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
              ptr);
}

@JS('wasm_bindgen')
external BoltzCoreWasmModule get wasmModule;

@JS()
@anonymous
class BoltzCoreWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external BoltzCoreWasmModule bind(dynamic thisArg, String moduleName);

  external void wire_btc_ln_swap_claim(NativePortType port_, List<dynamic> that,
      String out_address, Object abs_fee, bool try_cooperate);

  external void wire_btc_ln_swap_coop_close_submarine(
      NativePortType port_, List<dynamic> that);

  external void wire_btc_ln_swap_new(
      NativePortType port_,
      String id,
      int kind,
      int network,
      List<dynamic> keys,
      List<dynamic> preimage,
      List<dynamic> swap_script,
      String invoice,
      String script_address,
      Object out_amount,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_btc_ln_swap_new_reverse(
      NativePortType port_,
      String mnemonic,
      Object index,
      Object out_amount,
      String? out_address,
      int network,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_btc_ln_swap_new_submarine(
      NativePortType port_,
      String mnemonic,
      Object index,
      String invoice,
      int network,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_btc_ln_swap_refund(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_btc_ln_swap_tx_size(
      NativePortType port_, List<dynamic> that);

  external void wire_chain_swap_claim(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      String refund_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_chain_swap_new(
      NativePortType port_,
      String id,
      bool is_testnet,
      int direction,
      List<dynamic> refund_keys,
      List<dynamic> claim_keys,
      List<dynamic> preimage,
      List<dynamic> btc_script_str,
      List<dynamic> lbtc_script_str,
      String script_address,
      Object out_amount,
      String btc_electrum_url,
      String lbtc_electrum_url,
      String boltz_url,
      String? referral_id,
      String blinding_key);

  external void wire_chain_swap_new_swap(
      NativePortType port_,
      int direction,
      String mnemonic,
      Object index,
      int amount,
      bool is_testnet,
      String btc_electrum_url,
      String lbtc_electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_chain_swap_refund(NativePortType port_, List<dynamic> that,
      String refund_address, Object abs_fee, bool try_cooperate);

  external void wire_boltz_error_new(
      NativePortType port_, String kind, String message);

  external void wire_fees_chain(NativePortType port_, List<dynamic> that);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_fees_new(String boltz_url);

  external void wire_fees_reverse(NativePortType port_, List<dynamic> that);

  external void wire_fees_submarine(NativePortType port_, List<dynamic> that);

  external void wire_lbtc_ln_swap_broadcast_tx(
      NativePortType port_, List<dynamic> that, List<int> signed_bytes);

  external void wire_lbtc_ln_swap_claim(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_lbtc_ln_swap_claim_bytes(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_lbtc_ln_swap_coop_close_submarine(
      NativePortType port_, List<dynamic> that);

  external void wire_lbtc_ln_swap_new(
      NativePortType port_,
      String id,
      int kind,
      int network,
      List<dynamic> keys,
      List<dynamic> preimage,
      List<dynamic> swap_script,
      String invoice,
      Object out_amount,
      String out_address,
      String blinding_key,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_lbtc_ln_swap_new_reverse(
      NativePortType port_,
      String mnemonic,
      Object index,
      Object out_amount,
      String? out_address,
      int network,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_lbtc_ln_swap_new_submarine(
      NativePortType port_,
      String mnemonic,
      Object index,
      String invoice,
      int network,
      String electrum_url,
      String boltz_url,
      String? referral_id);

  external void wire_lbtc_ln_swap_refund(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_lbtc_ln_swap_refund_bytes(
      NativePortType port_,
      List<dynamic> that,
      String out_address,
      Object abs_fee,
      bool try_cooperate);

  external void wire_lbtc_ln_swap_tx_size(
      NativePortType port_, List<dynamic> that);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_btc_swap_script_str_new(
          int swap_type,
          String? funding_addrs,
          String hashlock,
          String receiver_pubkey,
          int locktime,
          String sender_pubkey);

  external void wire_decoded_invoice_from_string(
      NativePortType port_, String s, String? boltz_url);

  external void wire_key_pair_generate(NativePortType port_, String mnemonic,
      int network, Object index, int swap_type);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_key_pair_new(String secret_key, String public_key);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_l_btc_swap_script_str_new(
          int swap_type,
          String? funding_addrs,
          String hashlock,
          String receiver_pubkey,
          int locktime,
          String sender_pubkey,
          String blinding_key);

  external void wire_pre_image_generate(NativePortType port_);

  external dynamic /* flutter_rust_bridge::for_generated::WireSyncRust2DartDco */
      wire_pre_image_new(String value, String sha256, String hash160);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockReverseFeesAndLimits(
          dynamic ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSubmarineFeesAndLimits(
          dynamic ptr);
}
