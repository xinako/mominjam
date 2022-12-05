import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../succesful_page/successful_page.dart';

class KontakDarurat extends StatefulWidget {
  const KontakDarurat({Key? key}) : super(key: key);

  @override
  State<KontakDarurat> createState() => _KontakDaruratState();
}

class _KontakDaruratState extends State<KontakDarurat> {
  var email = "";
  var password = "";
  var userid = '';
  var newkondar1 = '';
  var newkondartelp1 = '';
  var newkondar2 = '';
  var newkondartelp2 = '';
  var newkondar3 = '';
  var newkondartelp3 = '';
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
        title: const Text('Kontak Darurat'),
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
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 20.0,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            "Kontak Darurat 1",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
            bottom: 5,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.kondar1}",
            decoration: const InputDecoration(
              labelText: "Hubungan",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondar1 = value),
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
            initialValue: "${user.kondartelp1}",
            decoration: const InputDecoration(
              labelText: "Nomor Telepon",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondartelp1 = value),
            keyboardType: TextInputType.phone,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 10.0,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            "Kontak Darurat 2",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
            bottom: 5,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.kondar2}",
            decoration: const InputDecoration(
              labelText: "Hubungan",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondar2 = value),
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
            initialValue: "${user.kondartelp2}",
            decoration: const InputDecoration(
              labelText: "Nomor Telepon",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondartelp2 = value),
            keyboardType: TextInputType.phone,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 10.0,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            "Kontak Darurat 3",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
            bottom: 5,
          ),
          width: double.infinity,
          child: TextFormField(
            initialValue: "${user.kondar3}",
            decoration: const InputDecoration(
              labelText: "Hubungan",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondar3 = value),
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
            initialValue: "${user.kondartelp3}",
            decoration: const InputDecoration(
              labelText: "Nomor Telepon",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => setState(() => newkondartelp3 = value),
            keyboardType: TextInputType.phone,
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
                  if (newkondar1.isNotEmpty) {
                    print(newkondar1);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondar1': newkondar1,
                    });
                  }
                  if (newkondartelp1.isNotEmpty) {
                    print(newkondartelp1);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondartelp1': newkondartelp1,
                    });
                  }
                  if (newkondar2.isNotEmpty) {
                    print(newkondar2);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondar2': newkondar2,
                    });
                  }
                  if (newkondartelp2.isNotEmpty) {
                    print(newkondartelp2);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondartelp2': newkondartelp2,
                    });
                  }
                  if (newkondar3.isNotEmpty) {
                    print(newkondar3);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondar3': newkondar3,
                    });
                  }
                  if (newkondartelp3.isNotEmpty) {
                    print(newkondartelp3);
                    final docUser = FirebaseFirestore.instance
                        .collection('users')
                        .doc(userid);
                    docUser.update({
                      'kondartelp3': newkondartelp3,
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
  String pendidikan;
  String married;
  String jumanak;
  String namaemak;
  String kondar1;
  String kondartelp1;
  String kondar2;
  String kondartelp2;
  String kondar3;
  String kondartelp3;

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
    this.pendidikan = '',
    this.married = '',
    this.jumanak = '',
    this.namaemak = '',
    this.kondar1 = '',
    this.kondartelp1 = '',
    this.kondar2 = '',
    this.kondartelp2 = '',
    this.kondar3 = '',
    this.kondartelp3 = '',
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
        'pendidikan': pendidikan,
        'married': married,
        'jumanak': jumanak,
        'namaemak': namaemak,
        'kondar1': kondar1,
        'kondartelp1': kondartelp1,
        'kondar2': kondar2,
        'kondartelp2': kondartelp2,
        'kondar3': kondar3,
        'kondartelp3': kondartelp3,
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
        pendidikan: json['pendidikan'],
        married: json['married'],
        jumanak: json['jumanak'],
        namaemak: json['namaemak'],
        kondar1: json['kondar1'],
        kondartelp1: json['kondartelp1'],
        kondar2: json['kondar2'],
        kondartelp2: json['kondartelp2'],
        kondar3: json['kondar3'],
        kondartelp3: json['kondartelp3'],
      );
}
