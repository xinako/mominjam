import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import '../succesful_page/successful_page.dart';
import '../payment/payment.dart';
import '../login/login.dart';

void main() {
  return runApp(HomeScreenLoan());
}

class HomeScreenLoan extends StatefulWidget {
  const HomeScreenLoan({Key? key}) : super(key: key);

  @override
  State<HomeScreenLoan> createState() => _HomeScreenLoanState();
}

// enum SingingCharacter { lafayette, jefferson }

class _HomeScreenLoanState extends State<HomeScreenLoan> {
  int pinjaman = 0;
  int tenor = 0;
  // SingingCharacter? _character = SingingCharacter.lafayette;
  // int totpinjam = pinjaman * 2;
  // int pinjam = 0;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MySimpleLogin();
              }));
            },
          ),
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
                    "Total Pembayaran Akhir Tenggat",
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
                    "Rp. xxxxxx,00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Headline',
                      color: Color.fromARGB(255, 17, 65, 100),
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
                          var tonet = 0;
                          if (tonet == 0) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Payment();
                            }));
                          }
                        },
                        child: const Text(
                          "Lakukan Pembayaran Sekarang",
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
