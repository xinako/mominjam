import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:mominjam/Screen/payment/payment.dart';
import '../home_screen/home_screen.dart';
// import '../home_screen/home_screen_loan.dart';
// import 'payment.dart';
import '../succesful_page/successful_page.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool isChecked = false;
  var userid = '';
  var formatteddate = '';
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    userid = user.uid;
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
          title: const Text("Mo-Minjam"),
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
                //     height: 30,
                //     // width: double.infinity,
                //     margin: const EdgeInsets.only(right: 285, top: 20),
                //     child: Builder(
                //       builder: (context) => ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(14)),
                //         ),
                //         onPressed: () {
                //           FocusScope.of(context).unfocus();
                //           var tonet = 0;
                //           if (tonet == 0) {
                //             Navigator.of(context)
                //                 .push(MaterialPageRoute(builder: (context) {
                //               return HomeScreen();
                //             }));
                //           }
                //         },
                //         child: const Text(
                //           "Kembali",
                //           style: TextStyle(fontSize: 12),
                //         ),
                //       ),
                //     )),
                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    // horizontal: 70,
                  ),
                  child: const Text(
                    "TERMS OF AGREEMENT ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "3. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "4. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20,
                  ),
                  child: const Text(
                    "5. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
                CheckboxListTile(
                  value: isChecked,
                  title: const Text(
                      'Saya telah membaca dan menyetujui persyaratan yang ditetapkan'),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),

                Container(
                    height: 55,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 100, top: 20),
                    child: Builder(
                      builder: (context) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          // var tonet = 0;
                          // print(bool);
                          if (isChecked == true) {
                            final docUser = FirebaseFirestore.instance
                                .collection('users')
                                .doc(userid);
                            docUser.update({
                              'status': 'loan',
                              'loandate': formatteddate,
                            });
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return successful_page();
                            }));
                          } else {
                            const message =
                                'Pastikan anda telah menyetujui persyaratan';
                            const snackBar = SnackBar(
                              content: Text(
                                message,
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.red,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: const Text(
                          "AJUKAN",
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
