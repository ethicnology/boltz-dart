// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'types.dart';
part 'btc_ln.freezed.dart';

// These functions are ignored because they are not marked as `pub`: `extract_id`

@freezed
class BtcLnSwap with _$BtcLnSwap {
  const BtcLnSwap._();
  const factory BtcLnSwap({
    required String id,
    required SwapType kind,
    required Chain network,
    required KeyPair keys,
    required BigInt keyIndex,
    required PreImage preimage,
    required BtcSwapScriptStr swapScript,
    required String invoice,
    required String scriptAddress,
    required BigInt outAmount,
    required String electrumUrl,
    required String boltzUrl,
    String? referralId,
  }) = _BtcLnSwap;
  Future<String> broadcastBoltz({required String signedHex}) => BoltzCore
      .instance.api
      .crateApiBtcLnBtcLnSwapBroadcastBoltz(that: this, signedHex: signedHex);

  Future<String> broadcastLocal({required String signedHex}) => BoltzCore
      .instance.api
      .crateApiBtcLnBtcLnSwapBroadcastLocal(that: this, signedHex: signedHex);

  Future<String> claim(
          {required String outAddress,
          required BigInt absFee,
          required bool tryCooperate}) =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapClaim(
          that: this,
          outAddress: outAddress,
          absFee: absFee,
          tryCooperate: tryCooperate);

  Future<void> coopCloseSubmarine() =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapCoopCloseSubmarine(
        that: this,
      );

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<BtcLnSwap> newInstance(
          {required String id,
          required SwapType kind,
          required Chain network,
          required KeyPair keys,
          required BigInt keyIndex,
          required PreImage preimage,
          required BtcSwapScriptStr swapScript,
          required String invoice,
          required String scriptAddress,
          required BigInt outAmount,
          required String electrumUrl,
          required String boltzUrl,
          String? referralId}) =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapNew(
          id: id,
          kind: kind,
          network: network,
          keys: keys,
          keyIndex: keyIndex,
          preimage: preimage,
          swapScript: swapScript,
          invoice: invoice,
          scriptAddress: scriptAddress,
          outAmount: outAmount,
          electrumUrl: electrumUrl,
          boltzUrl: boltzUrl,
          referralId: referralId);

  static Future<BtcLnSwap> newReverse(
          {required String mnemonic,
          required BigInt index,
          required BigInt outAmount,
          String? outAddress,
          required Chain network,
          required String electrumUrl,
          required String boltzUrl,
          String? description,
          String? referralId}) =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapNewReverse(
          mnemonic: mnemonic,
          index: index,
          outAmount: outAmount,
          outAddress: outAddress,
          network: network,
          electrumUrl: electrumUrl,
          boltzUrl: boltzUrl,
          description: description,
          referralId: referralId);

  static Future<BtcLnSwap> newSubmarine(
          {required String mnemonic,
          required BigInt index,
          required String invoice,
          required Chain network,
          required String electrumUrl,
          required String boltzUrl,
          String? referralId}) =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapNewSubmarine(
          mnemonic: mnemonic,
          index: index,
          invoice: invoice,
          network: network,
          electrumUrl: electrumUrl,
          boltzUrl: boltzUrl,
          referralId: referralId);

  Future<String> refund(
          {required String outAddress,
          required BigInt absFee,
          required bool tryCooperate}) =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapRefund(
          that: this,
          outAddress: outAddress,
          absFee: absFee,
          tryCooperate: tryCooperate);

  Future<BigInt> txSize() =>
      BoltzCore.instance.api.crateApiBtcLnBtcLnSwapTxSize(
        that: this,
      );
}
