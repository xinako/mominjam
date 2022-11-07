import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:mominjam/Screen/login/login.dart';

void main() {
  return runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var email = "";
  var password = "";

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
          title: const Text("Profile"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   margin: const EdgeInsets.only(bottom: 1),
                //   child: Image.asset(
                //     'assets/images/logo.png',
                //     width: 250,
                //     height: 250,
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    initialValue: "Bambang Sidoardjo",
                    enabled: false,
                    decoration: const InputDecoration(
                      labelText: "Nama Lengkap",
                      prefixIcon: Icon(Icons.person),
                      // border: OutlineInputBorder(),
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
                    initialValue: "6409011901000002",
                    enabled: false,
                    decoration: const InputDecoration(
                      labelText: "NIK",
                      prefixIcon: Icon(Icons.account_box),
                      // border: OutlineInputBorder(),
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
                      labelText: "Nomor Telepon",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    initialValue: "082112312323",
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
                    initialValue: "123103581347123",
                    decoration: const InputDecoration(
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
                    initialValue: 'bambang@gmail.com',
                    decoration: const InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    // initialValue: "123123123123",
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
                    initialValue: "asdasdasd",
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
                    initialValue: "asdasdasd",
                    decoration: const InputDecoration(
                      labelText: "Konfirmasi Password",
                      prefixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => password = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(
                //     vertical: 3,
                //     horizontal: 20,
                //   ),
                //   width: double.infinity,
                //   child: TextFormField(
                //     decoration: const InputDecoration(
                //       labelText: "Password",
                //       prefixIcon: Icon(Icons.password),
                //       border: OutlineInputBorder(),
                //     ),
                //     onChanged: (value) => setState(() => password = value),
                //     keyboardType: TextInputType.visiblePassword,
                //     obscureText: true,
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.only(
                //       left: 20, right: 20, top: 3, bottom: 11),
                //   width: double.infinity,
                //   child: TextFormField(
                //     decoration: const InputDecoration(
                //       labelText: "Konfirmasi Password",
                //       prefixIcon: Icon(Icons.check),
                //       border: OutlineInputBorder(),
                //     ),
                //     // onChanged: (value) => setState(() => password = value),
                //     keyboardType: TextInputType.visiblePassword,
                //     obscureText: true,
                //   ),
                // ),
                // Container(
                //   width: double.infinity,
                //   margin: const EdgeInsets.symmetric(
                //     vertical: 1,
                //     horizontal: 105,
                //   ),
                //   child: RichText(
                //     text: TextSpan(children: [
                //       TextSpan(
                //           text: 'Sudah Punya Akun? Login Disini',
                //           style: TextStyle(
                //             color: Colors.blue,
                //           ),
                //           recognizer: TapGestureRecognizer()
                //             ..onTap = () {
                //               Navigator.of(context)
                //                   .push(MaterialPageRoute(builder: (context) {
                //                 return MySimpleLogin();
                //               }));
                //             }),
                //     ]),
                //   ),
                // ),
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
                          print(email);
                          print(password);
                          if (email.isEmpty || password.isEmpty) {
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
                            const message = 'Tersimpan';
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
                          "Save",
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
}
