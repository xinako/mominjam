import 'dart:async';
// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:mominjam/Screen/login/login.dart';
import 'package:mominjam/Screen/register/register.dart';

void main() {
  return runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var telp = "";
  var bank = "";
  var norek = "";
  var newtelp = "";
  var newbank = "";
  var newnorek = "";
  var userid = "";
  @override
  Widget build(BuildContext context) {
    final userr = FirebaseAuth.instance.currentUser!;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    userid = userr.uid;
    print(userid);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Domine',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: FutureBuilder<User?>(
          future: readUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Ada yang Salah! ${snapshot.error}");
            } else if (snapshot.hasData) {
              final user = snapshot.data;

              return user == null
                  ? Center(child: Text("No User"))
                  : buildUser(user);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildUser(User user) {
    telp = user.telp;
    bank = user.bank;
    norek = user.norek;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  // controller: namacontroller,
                  initialValue: user.name,
                  decoration: const InputDecoration(
                    enabled: false,
                    labelText: "Nama Lengkap",
                    prefixIcon: Icon(Icons.person),
                    // border: OutlineInputBorder(),
                  ),
                  // onChanged: (value) => setState(() => nama = value),
                  // keyboardType: TextInputType.name,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  // controller: nikcontroller,
                  initialValue: user.nik,
                  decoration: const InputDecoration(
                    enabled: false,
                    labelText: "NIK",
                    prefixIcon: Icon(Icons.account_box),
                    // border: OutlineInputBorder(),
                  ),
                  // onChanged: (value) => setState(() => nik = value),
                  // keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  // controller: emailcontroller,
                  initialValue: user.email,
                  decoration: const InputDecoration(
                    enabled: false,
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    // border: OutlineInputBorder(),
                  ),
                  // onChanged: (value) => setState(() => email = value),
                  // initialValue: "123123123123",
                  // keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  initialValue: user.telp,
                  decoration: const InputDecoration(
                    // enabled: false,
                    labelText: "Nomor Telpon",
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),
                  // controller: telpcontroller,
                  onChanged: (value) => setState(() => newtelp = value),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  initialValue: user.bank,
                  decoration: const InputDecoration(
                    // enabled: false,
                    labelText: "Nama Bank",
                    prefixIcon: Icon(Icons.account_balance),
                    border: OutlineInputBorder(),
                  ),
                  // controller: bankcontroller,
                  onChanged: (value) => setState(() => newbank = value),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextFormField(
                  initialValue: user.norek,
                  decoration: const InputDecoration(
                    // enabled: false,
                    labelText: "Nomor Rekening",
                    prefixIcon: Icon(Icons.account_balance),
                    border: OutlineInputBorder(),
                  ),
                  // controller: norekcontroller,
                  onChanged: (value) => setState(() => newnorek = value),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                  height: 55,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 28,
                  ),
                  child: Builder(
                    builder: (context) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                      ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        print(telp);
                        print(bank);
                        print(norek);
                        print(newtelp);
                        print(newbank);
                        print(newnorek);
                        if (newtelp.isNotEmpty &&
                            newtelp.length >= 10 &&
                            newtelp.length <= 13) {
                          print(newtelp);
                          final docUser = FirebaseFirestore.instance
                              .collection('users')
                              .doc(userid);
                          docUser.update({
                            'telp': newtelp,
                          });
                        }
                        if (newbank.isNotEmpty) {
                          print(newbank);
                          final docUser = FirebaseFirestore.instance
                              .collection('users')
                              .doc(userid);
                          docUser.update({
                            'bank': newbank,
                          });
                        }
                        if (newnorek.isNotEmpty &&
                            newnorek.length >= 10 &&
                            newnorek.length <= 16) {
                          print(newnorek);
                          final docUser = FirebaseFirestore.instance
                              .collection('users')
                              .doc(userid);
                          docUser.update({
                            'norek': newnorek,
                          });
                        }
                        const message = 'Data telah disimpan';
                        const snackBar = SnackBar(
                          content: Text(
                            message,
                            style: TextStyle(fontSize: 20),
                          ),
                          backgroundColor: Colors.green,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )),
            ],
          ),
        )),
      ),
    );
  }
  // ListTile(
  //   leading: CircleAvatar(
  //     // child: Text('${user.email}'),
  //     child: Text('01'),
  //   ),
  //   title: Text(user.name),
  //   subtitle: Text(user.nik),
  // );

  Future<User?> readUsers() async {
    final docUser = FirebaseFirestore.instance.collection('users').doc(userid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return User.fromJson(snapshot.data()!);
    }
  }
}

// class User {
//   // String id;
//   final String name;
//   final String nik;
//   final String telp;
//   final String bank;
//   final String norek;
//   final String email;
//   User(
//       { // this.id = '',
//       required this.name,
//       required this.nik,
//       required this.telp,
//       required this.bank,
//       required this.norek,
//       required this.email});
//   Map<String, dynamic> toJson() => {
//         // 'id': id,
//         'nama': name,
//         'nik': nik,
//         'telp': telp,
//         'bank': bank,
//         'norek': norek,
//         'email': email,
//       };
//   static User fromJson(Map<String, dynamic> json) => User(
//       name: json['nama'],
//       nik: json['nik'],
//       telp: json['telp'],
//       bank: json['bank'],
//       norek: json['norek'],
//       email: json['email']);
// }

class User {
  String id;
  final String name;
  final String nik;
  final String telp;
  final String bank;
  final String norek;
  final String email;
  String status;
  String nominal;
  User(
      {this.id = '',
      required this.name,
      required this.nik,
      required this.telp,
      required this.bank,
      required this.norek,
      required this.email,
      this.status = '',
      this.nominal = ''});
  Map<String, dynamic> toJson() => {
        'id': id,
        'nama': name,
        'nik': nik,
        'telp': telp,
        'bank': bank,
        'norek': norek,
        'email': email,
        'status': status,
        'nominal': nominal,
      };
  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      name: json['nama'],
      nik: json['nik'],
      telp: json['telp'],
      bank: json['bank'],
      norek: json['norek'],
      email: json['email'],
      status: json['status'],
      nominal: json['nominal']);
}
