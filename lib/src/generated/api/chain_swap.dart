// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'types.dart';
part 'chain_swap.freezed.dart';

@freezed
class ChainSwap with _$ChainSwap {
  const ChainSwap._();
  const factory ChainSwap({
    required String id,
    required bool isTestnet,
    required ChainSwapDirection direction,
    required KeyPair refundKeys,
    required int refundIndex,
    required KeyPair claimKeys,
    required int claimIndex,
    required PreImage preimage,
    required BtcSwapScriptStr btcScriptStr,
    required LBtcSwapScriptStr lbtcScriptStr,
    required String scriptAddress,
    required int outAmount,
    required String btcElectrumUrl,
    required String lbtcElectrumUrl,
    required String boltzUrl,
    String? referralId,
    required String blindingKey,
  }) = _ChainSwap;
  Future<String> claim(
          {required String outAddress,
          required String refundAddress,
          required int absFee,
          required bool tryCooperate,
          dynamic hint}) =>
      BoltzCore.instance.api.chainSwapClaim(
          that: this,
          outAddress: outAddress,
          refundAddress: refundAddress,
          absFee: absFee,
          tryCooperate: tryCooperate,
          hint: hint);

  Future<String> getServerLockup({dynamic hint}) =>
      BoltzCore.instance.api.chainSwapGetServerLockup(that: this, hint: hint);

  Future<String> getUserLockup({dynamic hint}) =>
      BoltzCore.instance.api.chainSwapGetUserLockup(that: this, hint: hint);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<ChainSwap> newInstance(
          {required String id,
          required bool isTestnet,
          required ChainSwapDirection direction,
          required KeyPair refundKeys,
          required int refundIndex,
          required KeyPair claimKeys,
          required int claimIndex,
          required PreImage preimage,
          required BtcSwapScriptStr btcScriptStr,
          required LBtcSwapScriptStr lbtcScriptStr,
          required String scriptAddress,
          required int outAmount,
          required String btcElectrumUrl,
          required String lbtcElectrumUrl,
          required String boltzUrl,
          String? referralId,
          required String blindingKey,
          dynamic hint}) =>
      BoltzCore.instance.api.chainSwapNew(
          id: id,
          isTestnet: isTestnet,
          direction: direction,
          refundKeys: refundKeys,
          refundIndex: refundIndex,
          claimKeys: claimKeys,
          claimIndex: claimIndex,
          preimage: preimage,
          btcScriptStr: btcScriptStr,
          lbtcScriptStr: lbtcScriptStr,
          scriptAddress: scriptAddress,
          outAmount: outAmount,
          btcElectrumUrl: btcElectrumUrl,
          lbtcElectrumUrl: lbtcElectrumUrl,
          boltzUrl: boltzUrl,
          referralId: referralId,
          blindingKey: blindingKey,
          hint: hint);

  static Future<ChainSwap> newSwap(
          {required ChainSwapDirection direction,
          required String mnemonic,
          required int index,
          required int amount,
          required bool isTestnet,
          required String btcElectrumUrl,
          required String lbtcElectrumUrl,
          required String boltzUrl,
          String? referralId,
          dynamic hint}) =>
      BoltzCore.instance.api.chainSwapNewSwap(
          direction: direction,
          mnemonic: mnemonic,
          index: index,
          amount: amount,
          isTestnet: isTestnet,
          btcElectrumUrl: btcElectrumUrl,
          lbtcElectrumUrl: lbtcElectrumUrl,
          boltzUrl: boltzUrl,
          referralId: referralId,
          hint: hint);

  Future<String> refund(
          {required String refundAddress,
          required int absFee,
          required bool tryCooperate,
          dynamic hint}) =>
      BoltzCore.instance.api.chainSwapRefund(
          that: this,
          refundAddress: refundAddress,
          absFee: absFee,
          tryCooperate: tryCooperate,
          hint: hint);
}
