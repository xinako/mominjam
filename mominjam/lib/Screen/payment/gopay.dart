import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import '../home_screen/home_screen_loan.dart';
import 'payment.dart';

class GoPay extends StatefulWidget {
  const GoPay({Key? key}) : super(key: key);

  @override
  State<GoPay> createState() => _GoPayState();
}

class _GoPayState extends State<GoPay> {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Mo-Minjam"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 70,
                  ),
                  child: const Text(
                    "Tahapan Pembayaran Menggunakan GoPay : ",
                    textAlign: TextAlign.center,
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
                    "1. Buka aplikasi GoPay dan masuk ke menu Send ",
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
                    "2. Klik menu Send to Bank ",
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
                    "3. Masukkan nomor rekening yang tertera pada aplikasi Mo-Minjam",
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
                    "4. Masukkan nominal pembayaran dan klik Continue",
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
                    "5. Masukkan kode pin, dan pembayaran telah berhasil",
                    style: TextStyle(
                      // fontWeight: FontWeight.italic,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: 'Headline',
                      // color: Color.fromARGB(221, 229, 46, 214),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
