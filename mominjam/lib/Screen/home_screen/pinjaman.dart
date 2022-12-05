import 'package:flutter/material.dart';

class Pinjaman extends StatefulWidget {
  const Pinjaman({Key? key}) : super(key: key);

  @override
  State<Pinjaman> createState() => _PinjamanState();
}

class _PinjamanState extends State<Pinjaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Mo-Minjam'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 10.0,
                  bottom: 0.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      onPressed: (){},
                      child: Text("Peminjaman"),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          minimumSize: Size(170, 50)
                      )
                  ),
                  OutlinedButton(
                      onPressed: (){},
                      child: Text("Pembayaran"),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          minimumSize: Size(170, 50)
                      )
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
