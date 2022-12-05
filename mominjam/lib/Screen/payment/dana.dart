import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mominjam/Screen/payment/payment.dart';
// import '../home_screen/home_screen_loan.dart';
import 'payment.dart';

class Dana extends StatefulWidget {
  const Dana({Key? key}) : super(key: key);

  @override
  State<Dana> createState() => _DanaState();
}

class _DanaState extends State<Dana> {
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
                Container(
                  // width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 70,
                  ),
                  child: const Text(
                    "Tahap Pembayaran Menggunakan Dana : ",
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
                    "1. Buka aplikasi Dana dan masuk ke menu Send ",
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
