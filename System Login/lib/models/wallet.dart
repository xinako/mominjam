// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class WalletModel {
  String? lastUsed;
  double? cash;

  WalletModel({
    this.lastUsed,
    this.cash,
  });

  WalletModel copyWith({
    String? lastUsed,
    double? cash,
  }) {
    return WalletModel(
      lastUsed: lastUsed ?? this.lastUsed,
      cash: cash ?? this.cash,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'last_cash_date': lastUsed,
      'cash': cash,
    };
  }

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      lastUsed: map['last_cash_date'] != null ? map['last_cash_date'] as String : 'not found',
      cash: map['cash'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory WalletModel.fromJson(String source) =>
      WalletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Wallet(last_cash_date: $lastUsed, cash: $cash)';

  @override
  bool operator ==(covariant WalletModel other) {
    if (identical(this, other)) return true;

    return other.lastUsed == lastUsed && other.cash == cash;
  }

  @override
  int get hashCode => lastUsed.hashCode ^ cash.hashCode;
}
