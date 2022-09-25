// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Visa {
  String? lastUsed;
  double? cash;

  Visa({
    this.lastUsed,
     this.cash,

  });

  Visa copyWith({
    String? lastUsed,
    double? cash,
    int? id,
  }) {
    return Visa(
      lastUsed: lastUsed ?? this.lastUsed,
      cash: cash ?? this.cash,

    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'last_visa_date': lastUsed,
      'cash': cash,
    };
  }

  factory Visa.fromMap(Map<String, dynamic> map) {
    return Visa(
      lastUsed: map['last_visa_date'] != null ? map['last_visa_date'] as String : null,
      cash: map['visa'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Visa.fromJson(String source) =>
      Visa.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Visa(last_visa_date: $lastUsed, cash: $cash)';

  @override
  bool operator ==(covariant Visa other) {
    if (identical(this, other)) return true;

    return other.lastUsed == lastUsed && other.cash == cash ;
  }

  @override
  int get hashCode => lastUsed.hashCode ^ cash.hashCode;
}
