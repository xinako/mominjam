import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mominjam/Screen/home_screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mominjam/Screen/home_screen/home_screen_loan.dart';
import 'firebase_options.dart';
import 'Screen/login/login.dart';
import 'Screen/payment/payment.dart';
import 'Screen/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // String? get userid => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                  child: Text("Something Went Wrong! ${snapshot.error}"));
            } else if (snapshot.hasData) {
              // final useri = snapshot.data!;
              // final userr = FirebaseAuth.instance.currentUser!;
              // userid = userr.uid;
              // final docUser =
              //     FirebaseFirestore.instance.collection('users').doc(userid);
              // final useru = docUser.get();

              // return Usere.fromJson(snapshot.data()!);
              // return Usere.fromJson(snapshot.data()!);
              // return useri == null
              //     ? Center(child: Text("No User"))
              //     : buildUser(useri);
              // print(userid);

              return HomeScreen();
            } else {
              return MySimpleLogin();
            }
          }),
    );
  }

  // Stream<List<Usere?>> readUsers() =>
  // FirebaseFirestore.instance.collection('users').doc(userid);
  // Future<Usere?> readUsers() async {
  //   final docUser = FirebaseFirestore.instance.collection('users').doc(userid);
  //   final snapshot = await docUser.get();

  //   if (snapshot.exists) {
  //     return Usere.fromJson(snapshot.data()!);
  //   }
  // }

//   buildUser(Usere useri) {}
}

// class Usere {
//   String id;
//   final String name;
//   final String nik;
//   final String telp;
//   final String bank;
//   final String norek;
//   final String email;
//   String status;
//   String nominal;
//   Usere(
//       {this.id = '',
//       required this.name,
//       required this.nik,
//       required this.telp,
//       required this.bank,
//       required this.norek,
//       required this.email,
//       this.status = '',
//       this.nominal = ''});
//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'nama': name,
//         'nik': nik,
//         'telp': telp,
//         'bank': bank,
//         'norek': norek,
//         'email': email,
//         'status': status,
//         'nominal': nominal,
//       };
//   static Usere fromJson(Map<String, dynamic> json) => Usere(
//       id: json['id'],
//       name: json['nama'],
//       nik: json['nik'],
//       telp: json['telp'],
//       bank: json['bank'],
//       norek: json['norek'],
//       email: json['email'],
//       status: json['status'],
//       nominal: json['nominal']);
// }
