import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../succesful_page/successful_page.dart';
import '../terms/terms.dart';
import '../profile/profile.dart';

void main() {
  return runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// enum SingingCharacter { lafayette, jefferson }

class _HomeScreenState extends State<HomeScreen> {
  int pinjaman = 0;
  int tenor = 0;
  var userid = '';
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
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.exit_to_app,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => FirebaseAuth.instance.signOut(),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              tooltip: 'Show Snackbar',
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
            ),
          ],
          // actions: [
          //   Icon(Icons.person),
          // ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //   height: 64,
                //   // margin: EdgeInsets.only(bottom: 10),
                //   child: Row(
                //     // crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: <Widget>[
                //       CircleAvatar(
                //         radius: 20,
                //         backgroundImage: NetworkImage(
                //             'https://media-exp1.licdn.com/dms/image/C5603AQFpfXNXTvM5tw/profile-displayphoto-shrink_800_800/0/1632878555497?e=2147483647&v=beta&t=L4QIUyCdbOTw5Y3LQtxSMBUV_2Ppwe8fNJi_SuS1ojY'),
                //       ),
                //       SizedBox(
                //         width: 16,
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 64,
                //   margin: EdgeInsets.only(bottom: 180),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: <Widget>[
                //       CircleAvatar(
                //         radius: 20,
                //         backgroundImage: AssetImage(
                //             'assets/images/call-center.png'),
                //       ),
                //       SizedBox(
                //         width: 16,
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  // width: double.infinity,
                  // margin: EdgeInsets.only(bottom: 1, left: 50, top: 150),
                  child: const Text(
                    "Limit Pinjaman Anda :",
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
                  child: const Text(
                    "Rp. 15.000.000,00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Headline',
                      color: Color.fromARGB(255, 17, 65, 100),
                    ),
                  ),
                ),
                CustomRadioButton(
                  elevation: 0,
                  // absoluteZeroSpacing: true,
                  unSelectedColor: Theme.of(context).canvasColor,
                  buttonLables: const [
                    '30 Hari',
                    '60 Hari',
                    '90 Hari',
                  ],
                  buttonValues: const [
                    "12",
                    "24",
                    "36",
                  ],
                  buttonTextStyle: const ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.black,
                      textStyle: TextStyle(fontSize: 16)),
                  radioButtonValue: (value) {
                    print("Nilai Value $value");
                    tenor = int.parse("$value");
                    print("Nilai Tenor $tenor");
                  },
                  selectedColor: Theme.of(context).colorScheme.secondary,
                ),

                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 70,
                  ),
                  child: const Text(
                    "Minimum Peminjaman :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Headline',
                    ),
                  ),
                ),
                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 100,
                  ),
                  child: const Text(
                    "Rp. 400.000,00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Headline',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 1, bottom: 1),
                  // width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Nominal",
                      // prefixIcon: Icon(Icons.pinjaman),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => pinjaman = int.parse(value),
                    keyboardType: TextInputType.number,
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
                          primary: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (pinjaman < 400000 ||
                              pinjaman == 0 ||
                              tenor == 0 ||
                              pinjaman > 15000000) {
                            const message = 'Masukkan Data Dengan Benar!';
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
                            print("Tenor $tenor");
                            var total = (pinjaman * tenor / 100) + pinjaman;
                            var totalint = total.toInt();
                            final message =
                                'Total Pembayaran :  Rp.$totalint,00';
                            final snackBar = SnackBar(
                              content: Text(
                                message,
                                style: const TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.green,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: const Text(
                          "Cek Total Pembayaran",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )),

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
                          if (pinjaman < 400000 ||
                              pinjaman == 0 ||
                              tenor == 0 ||
                              pinjaman > 15000000) {
                            const message = 'Masukkan Data Dengan Benar!';
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
                            if (tenor == 12) {
                              tenor = 30;
                            } else if (tenor == 24) {
                              tenor = 60;
                            } else if (tenor == 36) {
                              tenor = 90;
                            }
                            print(tenor);
                            final docUser = FirebaseFirestore.instance
                                .collection('users')
                                .doc(userid);
                            docUser.update(
                                {'nominal': '$pinjaman', 'tenor': "$tenor"});
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Terms();
                            }));
                          }
                        },
                        child: const Text(
                          "AJUKAN SEKARANG",
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
