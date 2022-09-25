// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class SpentModel {
  String? username;
  String? last_update;
  double? spent;
  SpentModel({
    required this.username,
    required this.last_update,
    required this.spent,
  });

  SpentModel copyWith({
    String? username,
    String? last_update,
    double? spent,
  }) {
    return SpentModel(
      username: username ?? this.username,
      last_update: last_update ?? this.last_update,
      spent: spent ?? this.spent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'last_update': last_update,
      'spent': spent,
    };
  }

  factory SpentModel.fromMap(Map<dynamic, dynamic> map) {
    return SpentModel(
      username: map['username'] as String,
      last_update: map['last_update'] as String,
      spent: map['spent'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory SpentModel.fromJson(String source) =>
      SpentModel.fromMap(json.decode(source) as Map<dynamic, dynamic>);

  @override
  String toString() =>
      'SpentModel(username: $username, last_update: $last_update, spent: $spent)';

  @override
  bool operator ==(covariant SpentModel other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.last_update == last_update &&
        other.spent == spent;
  }

  @override
  int get hashCode => username.hashCode ^ last_update.hashCode ^ spent.hashCode;
}
