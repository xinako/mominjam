import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../home_screen/home_screen_loan.dart';

class successful_page extends StatefulWidget {
  const successful_page({Key? key}) : super(key: key);

  @override
  State<successful_page> createState() => _successful_pageState();
}

class _successful_pageState extends State<successful_page> {
  @override
  Widget build(BuildContext context) {
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
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Image.asset(
                    'assets/images/success.gif',
                    // width: 250,
                    height: 150,
                  ),
                ),
                Container(
                  // width: double.infinity,
                  // margin: const EdgeInsets.symmetric(
                  //   vertical: 1,
                  //   horizontal: 20,
                  // ),
                  child: const Text(
                    "Peminjaman berhasil dan akan segera diproses",
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
                          var tonet = 0;
                          if (tonet == 0) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return HomeScreenLoan();
                            }));
                          }
                        },
                        child: const Text(
                          "Kembali Ke Home",
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
