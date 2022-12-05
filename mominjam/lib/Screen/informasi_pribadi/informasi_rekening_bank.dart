import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../succesful_page/successful_page.dart';

class InformasiRekeningBank extends StatefulWidget {
  const InformasiRekeningBank({Key? key}) : super(key: key);

  @override
  State<InformasiRekeningBank> createState() => _InformasiRekeningBankState();
}

class _InformasiRekeningBankState extends State<InformasiRekeningBank> {
  var email = "";
  var password = "";
  var newnama = '';
  var newbank = '';
  var newnorek = '';
  var userid = '';
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    userid = user.uid;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Rekening Bank'),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 5,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.name}",
            decoration: const InputDecoration(
              labelText: "Nama Pemilik Rekening",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newnama = value),
            keyboardType: TextInputType.name,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.bank}",
            decoration: const InputDecoration(
              labelText: "Nama Bank/Nama Dompet",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newbank = value),
            keyboardType: TextInputType.name,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.norek}",
            decoration: const InputDecoration(
              labelText: "Nomor Rekening Bank",
              border: OutlineInputBorder(),
            ),
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
                  if (newnama.isNotEmpty) {
                    print(newnama);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'nama': newnama,
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
                  if (newnorek.isNotEmpty) {
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
                  "Simpan",
                  style: TextStyle(fontSize: 18),
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
  String kerjaan;
  String telpkantor;
  String tglgajian;
  String gaji;
  String lamakerja;
  String alamatkantor;

  User({
    this.id = '',
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
    this.loanpaymentdate = '',
    this.kerjaan = '',
    this.telpkantor = '',
    this.tglgajian = '',
    this.gaji = '',
    this.lamakerja = '',
    this.alamatkantor = '',
  });
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
        'loanpaymentdate': loanpaymentdate,
        'kerjaan': kerjaan,
        'telpkantor': telpkantor,
        'tglgajian': tglgajian,
        'gaji': gaji,
        'lamakerja': lamakerja,
        'alamatkantor': alamatkantor,
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
        loanpaymentdate: json['loanpaymentdate'],
        kerjaan: json['kerjaan'],
        telpkantor: json['telpkantor'],
        tglgajian: json['tglgajian'],
        gaji: json['gaji'],
        lamakerja: json['lamakerja'],
        alamatkantor: json['alamatkantor'],
      );
}
