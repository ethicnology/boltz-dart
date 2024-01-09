// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.5.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

abstract class BoltzDart {
  Future<(double, double)> swapFeesStaticMethodApi(
      {required String boltzUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSwapFeesStaticMethodApiConstMeta;

  Future<BtcLnSwap> newBtcLnSubmarineStaticMethodApi(
      {required String mnemonic,
      required int index,
      required String invoice,
      required Network network,
      required String electrumUrl,
      required String boltzUrl,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewBtcLnSubmarineStaticMethodApiConstMeta;

  Future<BtcLnSwap> newBtcLnReverseStaticMethodApi(
      {required String mnemonic,
      required int index,
      required int outAmount,
      required Network network,
      required String electrumUrl,
      required String boltzUrl,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewBtcLnReverseStaticMethodApiConstMeta;

  Future<String> btcLnReverseClaimStaticMethodApi(
      {required BtcLnSwap swap, required int fee, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kBtcLnReverseClaimStaticMethodApiConstMeta;

  Future<String> swapStatusStaticMethodApi(
      {required String boltzUrl, required String id, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSwapStatusStaticMethodApiConstMeta;
}

class BoltzError implements FrbException {
  final String kind;
  final String message;

  const BoltzError({
    required this.kind,
    required this.message,
  });
}

class BtcLnSwap {
  final String id;
  final SwapType kind;
  final Network network;
  final KeyPair keys;
  final PreImage preimage;
  final String redeemScript;
  final String invoice;
  final int outAmount;
  final String onchainAddress;
  final String electrumUrl;
  final String boltzUrl;

  const BtcLnSwap({
    required this.id,
    required this.kind,
    required this.network,
    required this.keys,
    required this.preimage,
    required this.redeemScript,
    required this.invoice,
    required this.outAmount,
    required this.onchainAddress,
    required this.electrumUrl,
    required this.boltzUrl,
  });
}

class KeyPair {
  final String secretKey;
  final String publicKey;

  const KeyPair({
    required this.secretKey,
    required this.publicKey,
  });
}

enum Network {
  Testnet,
  LiquidTestnet,
}

class PreImage {
  final String value;
  final String sha256;
  final String hash160;

  const PreImage({
    required this.value,
    required this.sha256,
    required this.hash160,
  });
}

enum SwapType {
  Submarine,
  Reverse,
}
