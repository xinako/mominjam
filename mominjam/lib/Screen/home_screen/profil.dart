import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mominjam/Screen/informasi_pribadi/informasi_pribadi.dart';
import 'package:mominjam/Screen/layanan_pelanggan/layanan_pelanggan.dart';
import 'package:mominjam/Screen/login/login.dart';

import '../succesful_page/successful_page.dart';
import '../tentang_kami/tentang_kami.dart';

void main() {
  return runApp(const Profil());
}

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Mo-Minjam'),
        centerTitle: true,
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
    );
  }

  Widget buildUser(User user) {
    telp = user.telp;
    bank = user.bank;
    norek = user.norek;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.indigo,
            border: Border(
              top: BorderSide(color: Colors.indigo),
              bottom: BorderSide(color: Colors.indigo),
            ),
          ),
          padding: const EdgeInsets.only(
            left: 20.0,
            bottom: 0,
            top: 20.0,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "${user.name}",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.indigo,
            border: Border(
              top: BorderSide(color: Colors.indigo),
              bottom: BorderSide(color: Colors.indigo),
            ),
          ),
          padding: const EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
          alignment: Alignment.topLeft,
          child: Text(
            "${user.nik}",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.indigo,
            border: Border(
              top: BorderSide(color: Colors.indigo),
              bottom: BorderSide(color: Colors.indigo),
            ),
          ),
          padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          alignment: Alignment.topLeft,
          child: Text(
            "${user.bank} ${user.norek}",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return InformasiPribadi();
            }));
          },
          child: Container(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 28.0, bottom: 28.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Icon(Icons.account_circle_rounded),
                  ),
                  Expanded(
                    child: Text(
                      "Informasi Pribadi",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.navigate_next_rounded),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return TentangKami();
            }));
          },
          child: Container(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 28.0, bottom: 28.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Icon(Icons.perm_device_info_rounded),
                  ),
                  Expanded(
                    child: Text(
                      "Tentang Kami",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.navigate_next_rounded),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return LayananPelanggan();
            }));
          },
          child: Container(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 28.0, bottom: 28.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Icon(Icons.help),
                  ),
                  Expanded(
                    child: Text(
                      "Layanan Pelanggan",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(Icons.navigate_next_rounded),
                  ),
                ],
              )),
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
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  {
                    FirebaseAuth.instance.signOut();
                  }
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 18, color: Colors.indigo),
                ),
              ),
            )),
      ]))),
    );
  }

  Future<User?> readUsers() async {
    final docUser = FirebaseFirestore.instance.collection('users').doc(userid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return User.fromJson(snapshot.data()!);
    }
  }
}

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
  String loandate;
  String tenor;
  String datecreated;
  String loanpaymentdate;
  User(
      {this.id = '',
      required this.name,
      required this.nik,
      required this.telp,
      required this.bank,
      required this.norek,
      required this.email,
      this.status = '',
      this.nominal = '',
      this.loandate = '',
      this.tenor = '',
      this.datecreated = '',
      this.loanpaymentdate = ''});
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
        'loandate': loandate,
        'tenor': tenor,
        'datecreated': datecreated,
        'loanpaymentdate': loanpaymentdate
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
      nominal: json['nominal'],
      loandate: json['loandate'],
      tenor: json['tenor'],
      datecreated: json['datecreated'],
      loanpaymentdate: json['loanpaymentdate']);
}
