import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
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
  var email = "";
  var password = "";
  var cpassword = "";
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
                    decoration: const InputDecoration(
                      enabled: false,
                      labelText: "Nama Lengkap",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
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
                    decoration: const InputDecoration(
                      enabled: false,
                      labelText: "NIK",
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
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
                    decoration: const InputDecoration(
                      enabled: false,
                      labelText: "Nomor Telepon",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
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
                    decoration: const InputDecoration(
                      enabled: false,
                      labelText: "Nomor Rekening",
                      prefixIcon: Icon(Icons.account_balance),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
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
                          if (email.isEmpty ||
                              password.isEmpty ||
                              password != cpassword) {
                            const message = 'Masukkan data dengan benar';
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
                            register();
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
                            Timer(Duration(seconds: 2), () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return MySimpleLogin();
                              }));
                            });
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

  Future register() async {
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
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
