import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import '../succesful_page/successful_page.dart';
import '../payment/payment.dart';
import '../login/login.dart';

void main() {
  return runApp(Pembayaran());
}

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

// enum SingingCharacter { lafayette, jefferson }

class _PembayaranState extends State<Pembayaran> {
  int pinjaman = 0;
  int tenor = 0;
  var tenn = 0;
  var userid = '';
  var nomi = '';
  var loandate = '';
  var loandateday = '';
  var loandatemonth = '';
  var loandateyear = '';
  var intloandateday = 0;
  var intloandatemonth = 0;
  var intloandateyear = 0;
  var tonet = '';
  var inttonet = 0;
  var simpanday = 0;
  var totalday = 0;
  var simpanmonth = '';
  var lumping = true;
  var tenno = '';
  var total = 0;
  var intnomi = 0;
  var inttenno = 0;
  // SingingCharacter? _character = SingingCharacter.lafayette;
  // int totpinjam = pinjaman * 2;
  // int pinjam = 0;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    userid = user.uid;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Domine',
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text("Mo-Minjam"),
          centerTitle: true,
        ),
        body: FutureBuilder<Usere?>(
          future: readUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Ada yang Salah! ${snapshot.error}");
            } else if (snapshot.hasData) {
              final user = snapshot.data;

              return user == null
                  ? Center(child: Text("No Usere"))
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

  Widget buildUser(Usere user) {
    nomi = user.nominal;
    // tenno = user.tenor;
    intnomi = int.parse(nomi);
    // inttenno = int.parse(tenno);
    // tenn = 0;
    // print(intnomi);
    // print(inttenno);

    // var totall = (intnomi * tenn / 100) + intnomi;
    // var totalint = total.toInt();
    // nomi = int.parse(user.nominal);
    // tenno = int.parse(user.tenor);
    // nomi = (nomi * tenno / 100) + nomi;
    loandate = user.loandate;
    loandateday = loandate.substring(0, 2);
    loandatemonth = loandate.substring(3, 5);
    loandateyear = loandate.substring(6, 10);
    print(loandate);
    print(loandateday);
    print(loandatemonth);
    print(loandateyear);
    intloandateday = int.tryParse(loandateday)!;
    intloandatemonth = int.tryParse(loandatemonth)!;
    intloandateyear = int.tryParse(loandateyear)!;
    tonet = user.tenor;
    inttonet = int.parse(tonet);
    totalday = intloandateday + inttonet;
    if (inttonet == 30) {
      tenn = 12;
    } else if (inttonet == 60) {
      tenn = 24;
    } else if (inttonet == 90) {
      tenn = 36;
    }
    var totall = (intnomi * tenn / 100) + intnomi;
    // var totalint = totall.toInt();
    print(totall);
    while (lumping == true) {
      // bulan 1 3 5 7 8 10 12
      if (intloandatemonth == 1 ||
          intloandatemonth == 3 ||
          intloandatemonth == 5 ||
          intloandatemonth == 7 ||
          intloandatemonth == 8 ||
          intloandatemonth == 10 ||
          intloandatemonth == 12) {
        if (totalday - 31 <= 31) {
          simpanday = totalday - 31;
          totalday = simpanday;
          lumping = false;
        } else {
          simpanday = 32 - intloandateday;
          intloandateday = 1;
          totalday -= simpanday;
          intloandatemonth += 1;
          if (intloandatemonth > 12) {
            intloandatemonth = 1;
            intloandateyear += 1;
          }
        }
      }
      //bulan 4 6 9 11
      else if (intloandatemonth == 4 ||
          intloandatemonth == 6 ||
          intloandatemonth == 9 ||
          intloandatemonth == 11) {
        if (totalday - 30 <= 30) {
          simpanday = totalday - 30;
          totalday = simpanday;
          lumping = false;
        } else {
          simpanday = 31 - intloandateday;
          intloandateday = 1;
          totalday -= simpanday;
          intloandatemonth += 1;
        }
      }
      //bulan 2 tanggal 29
      else if (intloandatemonth == 2) {
        if (intloandateyear % 4 == 0) {
          if (totalday - 29 <= 29) {
            simpanday = totalday - 29;
            totalday = simpanday;
            lumping = false;
          } else {
            simpanday = 30 - intloandateday;
            intloandateday = 1;
            totalday -= simpanday;
            intloandatemonth += 1;
          }
        }
        //bulan 2 tanggal 28
        else {
          if (totalday - 28 <= 28) {
            simpanday = totalday - 28;
            totalday = simpanday;
            // totalday = 28 - totalday;
            lumping = false;
          } else {
            simpanday = 29 - intloandateday;
            intloandateday = 1;
            totalday -= simpanday;
            intloandatemonth += 1;
          }
        }
      }
    }
    print(totalday);
    print(intloandatemonth);
    print(intloandateyear);
    if (totalday < 10) {
      loandateday = "0$totalday";
    } else {
      loandateday = "$totalday";
    }
    if (intloandatemonth < 10) {
      loandatemonth = "0$intloandatemonth";
    } else {
      loandatemonth = "$intloandatemonth";
    }

    loandateyear = "$intloandateyear";
    print(loandateday);
    print(loandatemonth);
    print(loandateyear);
    final docUser = FirebaseFirestore.instance.collection('users').doc(userid);
    docUser.update(
        {'loanpaymentdate': '$loandateday-$loandatemonth-$loandateyear'});
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
                  vertical: 10,
                  horizontal: 40,
                ),
                child: const Text(
                  "Total Pembayaran",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'Headline',
                    color: Color.fromARGB(221, 75, 57, 57),
                  ),
                ),
              ),
              Container(
                // width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
                // margin: const EdgeInsets.only(
                //     left: 20, right: 20, top: 1, bottom: 1),
                child: Text(
                  "Rp.$totall,00",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'Headline',
                    color: Color.fromARGB(255, 17, 65, 100),
                  ),
                ),
              ),
              Container(
                // width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 100,
                ),
                child: Text(
                  "Lakukan pembayaran sebelum : $loandateday-$loandatemonth-$loandateyear",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'Headline',
                  ),
                ),
              ),
              Container(
                  height: 55,
                  // width: double.infinity,
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

                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Payment();
                        }));
                      },
                      child: const Text(
                        "Lakukan Pembayaran Sekarang",
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

  Future<Usere?> readUsers() async {
    final docUser = FirebaseFirestore.instance.collection('users').doc(userid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return Usere.fromJson(snapshot.data()!);
    }
  }
}

class Usere {
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
  Usere(
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
  static Usere fromJson(Map<String, dynamic> json) => Usere(
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
