// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int id;
  String? username;
  User({
    this.id=0,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
    };
  }

  factory User.fromMap(Map<dynamic, dynamic> map) {
    return User(
      id: map['id'] as int,
      username: map['username'] != null ? map['username'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(id: $id, username: $username)';

  User copyWith({
    int? id,
    String? username,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
    );
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id && other.username == username;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode;
}
