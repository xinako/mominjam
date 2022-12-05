import 'dart:async';
// import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mominjam/Screen/login/login.dart';
import '../home_screen/home_screen.dart';
import '../../main.dart';

void main() {
  return runApp(const MyRegister());
}

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  var nama = "";
  var nik = "";
  var telp = "";
  var bank = "";
  var norek = "";
  var email = "";
  var password = "";
  var cpassword = "";
  var formatteddate = "";
  final namacontroller = TextEditingController();
  final nikcontroller = TextEditingController();
  final telpcontroller = TextEditingController();
  final bankcontroller = TextEditingController();
  final norekcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference users = firestore.collection('users');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    formatteddate = formatter.format(now);
    print(formatteddate);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Domine',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register Mo-Minjam"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: namacontroller,
                    decoration: const InputDecoration(
                      // enabled: false,
                      labelText: "Nama Lengkap",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => nama = value),
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
                    controller: nikcontroller,
                    decoration: const InputDecoration(
                      // enabled: false,
                      labelText: "NIK",
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => nik = value),
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
                    controller: telpcontroller,
                    decoration: const InputDecoration(
                      // enabled: false,
                      labelText: "Nomor Telepon",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => telp = value),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: bankcontroller,
                    decoration: const InputDecoration(
                      // enabled: false,
                      labelText: "Nama Bank",
                      prefixIcon: Icon(Icons.account_balance),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => bank = value),
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
                    controller: norekcontroller,
                    decoration: const InputDecoration(
                      // enabled: false,
                      labelText: "Nomor Rekening",
                      prefixIcon: Icon(Icons.account_balance),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => norek = value),
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
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => password = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 3, bottom: 11),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Konfirmasi Password",
                      prefixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => cpassword = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 105,
                  ),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Sudah Punya Akun? Login Disini',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return MySimpleLogin();
                              }));
                            }),
                    ]),
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
                          if (nama.isEmpty ||
                              nik.isEmpty ||
                              telp.isEmpty ||
                              bank.isEmpty ||
                              norek.isEmpty ||
                              email.isEmpty ||
                              password.isEmpty ||
                              password.length < 6 ||
                              password != cpassword) {
                            const message =
                                'Ada kesalahan dalam pengisian data!';
                            const snackBar = SnackBar(
                              content: Text(
                                message,
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.red,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            final user = User(
                                name: namacontroller.text.trim(),
                                nik: nikcontroller.text.trim(),
                                telp: telpcontroller.text.trim(),
                                bank: bankcontroller.text.trim(),
                                norek: norekcontroller.text.trim(),
                                email: emailcontroller.text.trim());

                            register(user);

                            const message = 'Akun terdaftarkan';
                            const snackBar = SnackBar(
                              content: Text(
                                message,
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.green,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            // Timer(Duration(seconds: 2), () {

                            // });
                          }
                        },
                        child: const Text(
                          "Daftar",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future register(User user) async {
    print(namacontroller.text.trim());
    print(nikcontroller.text.trim());
    print(telpcontroller.text.trim());
    print(bankcontroller.text.trim());
    print(norekcontroller.text.trim());
    print(emailcontroller.text.trim());
    print(passwordcontroller.text.trim());
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text.trim(),
          password: passwordcontroller.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    Timer(Duration(seconds: 2), () {
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    });

    final userr = FirebaseAuth.instance.currentUser!;

    final docuser =
        FirebaseFirestore.instance.collection('users').doc(userr.uid);
    user.id = docuser.id;
    user.status = 'noloan';
    user.nominal = '0';
    user.tenor = '0';
    user.loandate = '01-01-0001';
    user.loanpaymentdate = '';
    user.kerjaan = '';
    user.telpkantor = '';
    user.tglgajian = '';
    user.gaji = '';
    user.lamakerja = '';
    user.alamatkantor = '';
    user.pendidikan = '';
    user.married = '';
    user.jumanak = '';
    user.namaemak = '';
    user.kondar1 = '';
    user.kondartelp1 = '';
    user.kondar2 = '';
    user.kondartelp2 = '';
    user.kondar3 = '';
    user.kondartelp3 = '';
    user.datecreated = formatteddate;
    final json = user.toJson();
    await docuser.set(json);
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
