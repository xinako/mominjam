import 'package:flutter/material.dart';
import 'package:mominjam/Screen/informasi_pribadi/informasi_pribadi.dart';
import 'package:mominjam/Screen/layanan_pelanggan/layanan_pelanggan.dart';
import 'package:mominjam/Screen/login/login.dart';

import '../succesful_page/successful_page.dart';
import '../tentang_kami/tentang_kami.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
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
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    border: Border(
                      top: BorderSide(color: Colors.indigo),
                      bottom: BorderSide(color: Colors.indigo),
                    ),),
                  padding: const EdgeInsets.only(
                    left: 20.0,
                        bottom:0,
                    top: 20.0,
                  ),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "MUHAMMAD GOZY AL VAIZ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    border: Border(
                        top: BorderSide(color: Colors.indigo),
                      bottom: BorderSide(color: Colors.indigo),
                    ),),
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 5.0,
                      bottom: 5.0
                  ),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "ID 640901******0002",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.indigo,
                    border: Border(
                      top: BorderSide(color: Colors.indigo),
                      bottom: BorderSide(color: Colors.indigo),
                    ),),
                  padding: const EdgeInsets.only(
                      left: 20.0,
                    bottom: 20.0
                  ),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "VA BNI 8808123218080808",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return InformasiPribadi();
                  }));},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0,
                        top: 28.0,
                        bottom: 28.0
                    ),
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: const <Widget>[
                        Expanded(
                          child: Icon(Icons.account_circle_rounded),
                        ),
                        Expanded(
                          child: Text(
                            "Informasi Pribadi",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Icon(Icons.navigate_next_rounded),
                        ),
                      ],
                    )
                  ),
                ),
                InkWell(
                  onTap: () {Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TentangKami();
                  }));},
                  child: Container(
                      padding: const EdgeInsets.only(
                          left: 10.0,
                          top: 28.0,
                          bottom: 28.0
                      ),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                            child: Icon(Icons.perm_device_info_rounded),
                          ),
                          Expanded(
                            child: Text(
                              "Tentang Kami",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(Icons.navigate_next_rounded),
                          ),
                        ],
                      )
                  ),
                ),
                InkWell(
                  onTap: () {Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LayananPelanggan();
                  }));},
                  child: Container(
                      padding: const EdgeInsets.only(
                          left: 10.0,
                          top: 28.0,
                          bottom: 28.0
                      ),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                            child: Icon(Icons.help),
                          ),
                          Expanded(
                            child: Text(
                              "Layanan Pelanggan",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(Icons.navigate_next_rounded),
                          ),
                        ],
                      )
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
                          backgroundColor: Colors.white,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return MySimpleLogin();
                            }));
                          }
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 18,
                            color: Colors.indigo
                          ),
                        ),
                      ),
                    )),
              ]
          )
        )
    );
  }
}
