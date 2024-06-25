// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../lib.dart';
import '../utils/error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'types.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `from`

class LdkBolt11Payment {
  final Bolt11Payment ptr;

  const LdkBolt11Payment({
    required this.ptr,
  });

  Future<Bolt11Invoice> receive(
          {required BigInt amountMsat,
          required String description,
          required int expirySecs}) =>
      core.instance.api.crateApiBolt11LdkBolt11PaymentReceive(
          that: this,
          amountMsat: amountMsat,
          description: description,
          expirySecs: expirySecs);

  Future<Bolt11Invoice> receiveVariableAmount(
          {required String description, required int expirySecs}) =>
      core.instance.api.crateApiBolt11LdkBolt11PaymentReceiveVariableAmount(
          that: this, description: description, expirySecs: expirySecs);

  Future<Bolt11Invoice> receiveVariableAmountViaJitChannel(
          {required String description,
          required int expirySecs,
          BigInt? maxProportionalLspFeeLimitPpmMsat}) =>
      core.instance.api
          .crateApiBolt11LdkBolt11PaymentReceiveVariableAmountViaJitChannel(
              that: this,
              description: description,
              expirySecs: expirySecs,
              maxProportionalLspFeeLimitPpmMsat:
                  maxProportionalLspFeeLimitPpmMsat);

  Future<Bolt11Invoice> receiveViaJitChannel(
          {required BigInt amountMsat,
          required String description,
          required int expirySecs,
          BigInt? maxTotalLspFeeLimitMsat}) =>
      core.instance.api.crateApiBolt11LdkBolt11PaymentReceiveViaJitChannel(
          that: this,
          amountMsat: amountMsat,
          description: description,
          expirySecs: expirySecs,
          maxTotalLspFeeLimitMsat: maxTotalLspFeeLimitMsat);

  Future<PaymentId> send({required Bolt11Invoice invoice}) => core.instance.api
      .crateApiBolt11LdkBolt11PaymentSend(that: this, invoice: invoice);

  Future<void> sendProbes({required Bolt11Invoice invoice}) => core.instance.api
      .crateApiBolt11LdkBolt11PaymentSendProbes(that: this, invoice: invoice);

  Future<void> sendProbesUsingAmount(
          {required Bolt11Invoice invoice, required BigInt amountMsat}) =>
      core.instance.api.crateApiBolt11LdkBolt11PaymentSendProbesUsingAmount(
          that: this, invoice: invoice, amountMsat: amountMsat);

  Future<PaymentId> sendUsingAmount(
          {required Bolt11Invoice invoice, required BigInt amountMsat}) =>
      core.instance.api.crateApiBolt11LdkBolt11PaymentSendUsingAmount(
          that: this, invoice: invoice, amountMsat: amountMsat);

  @override
  int get hashCode => ptr.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LdkBolt11Payment &&
          runtimeType == other.runtimeType &&
          ptr == other.ptr;
}
