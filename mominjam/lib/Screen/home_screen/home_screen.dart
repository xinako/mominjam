import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  // SingingCharacter? _character = SingingCharacter.lafayette;
  // int totpinjam = pinjaman * 2;
  // int pinjam = 0;

  @override
  Widget build(BuildContext context) {
    var tenor = 0;
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
                    "Rp. 1.500.000,00",
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
                  buttonLables: [
                    '30 Hari',
                    '60 Hari',
                    '90 Hari',
                  ],
                  buttonValues: [
                    "12",
                    "24",
                    "36",
                  ],
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.black,
                      textStyle: TextStyle(fontSize: 16)),
                  radioButtonValue: (value) {
                    print("Nilai Value $value");
                    tenor = int.parse("$value");
                    print("Nilai Tenor $tenor");
                  },
                  selectedColor: Theme.of(context).accentColor,
                ),
                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 120,
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
                    vertical: 15,
                    horizontal: 150,
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (pinjaman < 400000 ||
                              pinjaman == 0 ||
                              tenor == 0) {
                            const message = 'Masukkan Data Dengan Benar';
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
                              tenor == 0) {
                            const message = 'Masukkan Data Dengan Benar';
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
                            final message = 'Total Pembayaran :  $pinjaman)';
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
