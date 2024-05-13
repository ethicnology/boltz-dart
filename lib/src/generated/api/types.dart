// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.31.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'types.freezed.dart';

@freezed
class AllFees with _$AllFees {
  const AllFees._();
  const factory AllFees({
    required Limits btcLimits,
    required Limits lbtcLimits,
    required SubmarineSwapFees btcSubmarine,
    required ReverseSwapFees btcReverse,
    required SubmarineSwapFees lbtcSubmarine,
    required ReverseSwapFees lbtcReverse,
    required String btcPairHash,
    required String lbtcPairHash,
  }) = _AllFees;
  static Future<AllFees> fetch({required String boltzUrl, dynamic hint}) =>
      BoltzCore.instance.api.allFeesFetch(boltzUrl: boltzUrl, hint: hint);
}

@freezed
class BtcSwapScriptV2Str with _$BtcSwapScriptV2Str {
  const BtcSwapScriptV2Str._();
  const factory BtcSwapScriptV2Str.raw({
    required SwapType swapType,
    String? fundingAddrs,
    required String hashlock,
    required String receiverPubkey,
    required int locktime,
    required String senderPubkey,
  }) = _BtcSwapScriptV2Str;
  factory BtcSwapScriptV2Str(
          {required SwapType swapType,
          String? fundingAddrs,
          required String hashlock,
          required String receiverPubkey,
          required int locktime,
          required String senderPubkey,
          dynamic hint}) =>
      BoltzCore.instance.api.btcSwapScriptV2StrNew(
          swapType: swapType,
          fundingAddrs: fundingAddrs,
          hashlock: hashlock,
          receiverPubkey: receiverPubkey,
          locktime: locktime,
          senderPubkey: senderPubkey,
          hint: hint);
}

enum Chain {
  bitcoin,
  bitcoinTestnet,
  liquid,
  liquidTestnet,
}

@freezed
class DecodedInvoice with _$DecodedInvoice {
  const DecodedInvoice._();
  const factory DecodedInvoice({
    required int msats,
    required int expiry,
    required int expiresIn,
    required int expiresAt,
    required bool isExpired,
    required String network,
    required int cltvExpDelta,
    String? bip21,
  }) = _DecodedInvoice;

  /// Add boltz_url & chain for route hint check
  static Future<DecodedInvoice> fromString(
          {required String s, String? boltzUrl, dynamic hint}) =>
      BoltzCore.instance.api
          .decodedInvoiceFromString(s: s, boltzUrl: boltzUrl, hint: hint);
}

@freezed
class KeyPair with _$KeyPair {
  const KeyPair._();
  const factory KeyPair.raw({
    required String secretKey,
    required String publicKey,
  }) = _KeyPair;
  static Future<KeyPair> generate(
          {required String mnemonic,
          required Chain network,
          required int index,
          required SwapType swapType,
          dynamic hint}) =>
      BoltzCore.instance.api.keyPairGenerate(
          mnemonic: mnemonic,
          network: network,
          index: index,
          swapType: swapType,
          hint: hint);

  factory KeyPair(
          {required String secretKey,
          required String publicKey,
          dynamic hint}) =>
      BoltzCore.instance.api
          .keyPairNew(secretKey: secretKey, publicKey: publicKey, hint: hint);
}

@freezed
class LBtcSwapScriptV2Str with _$LBtcSwapScriptV2Str {
  const LBtcSwapScriptV2Str._();
  const factory LBtcSwapScriptV2Str.raw({
    required SwapType swapType,
    String? fundingAddrs,
    required String hashlock,
    required String receiverPubkey,
    required int locktime,
    required String senderPubkey,
    required String blindingKey,
  }) = _LBtcSwapScriptV2Str;
  factory LBtcSwapScriptV2Str(
          {required SwapType swapType,
          String? fundingAddrs,
          required String hashlock,
          required String receiverPubkey,
          required int locktime,
          required String senderPubkey,
          required String blindingKey,
          dynamic hint}) =>
      BoltzCore.instance.api.lBtcSwapScriptV2StrNew(
          swapType: swapType,
          fundingAddrs: fundingAddrs,
          hashlock: hashlock,
          receiverPubkey: receiverPubkey,
          locktime: locktime,
          senderPubkey: senderPubkey,
          blindingKey: blindingKey,
          hint: hint);
}

@freezed
class Limits with _$Limits {
  const factory Limits({
    required int minimal,
    required int maximal,
  }) = _Limits;
}

@freezed
class PreImage with _$PreImage {
  const PreImage._();
  const factory PreImage.raw({
    required String value,
    required String sha256,
    required String hash160,
  }) = _PreImage;
  static Future<PreImage> generate({dynamic hint}) =>
      BoltzCore.instance.api.preImageGenerate(hint: hint);

  factory PreImage(
          {required String value,
          required String sha256,
          required String hash160,
          dynamic hint}) =>
      BoltzCore.instance.api.preImageNew(
          value: value, sha256: sha256, hash160: hash160, hint: hint);
}

@freezed
class ReverseSwapFees with _$ReverseSwapFees {
  const factory ReverseSwapFees({
    required double boltzFeesRate,
    required int lockupFees,
    required int claimFeesEstimate,
  }) = _ReverseSwapFees;
}

@freezed
class SubmarineSwapFees with _$SubmarineSwapFees {
  const factory SubmarineSwapFees({
    required double boltzFeesRate,
    required int claimFees,
    required int lockupFeesEstimate,
  }) = _SubmarineSwapFees;
}

enum SwapType {
  submarine,
  reverse,
}
