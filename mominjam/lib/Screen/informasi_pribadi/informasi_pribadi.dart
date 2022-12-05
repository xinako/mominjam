import 'package:flutter/material.dart';
import 'package:mominjam/Screen/informasi_pribadi/informasi_pekerjaan.dart';
import 'package:mominjam/Screen/informasi_pribadi/informasi_rekening_bank.dart';
import 'package:mominjam/Screen/informasi_pribadi/informasi_tambahan.dart';
import 'package:mominjam/Screen/informasi_pribadi/kontak_darurat.dart';
import 'package:mominjam/Screen/informasi_pribadi/sosial_media.dart';
import '../succesful_page/successful_page.dart';

class InformasiPribadi extends StatefulWidget {
  const InformasiPribadi({Key? key}) : super(key: key);

  @override
  State<InformasiPribadi> createState() => _InformasiPribadiState();
}

class _InformasiPribadiState extends State<InformasiPribadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informasi Pribadi'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  InkWell(
                    onTap: () {Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return InformasiPekerjaan();
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
                              child: Icon(Icons.work),
                            ),
                            Expanded(
                              child: Text(
                                "Informasi Pekerjaan",
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
                      return KontakDarurat();
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
                              child: Icon(Icons.contacts_rounded),
                            ),
                            Expanded(
                              child: Text(
                                "Kontak Darurat",
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
                      return InformasiTambahan();
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
                              child: Icon(Icons.description_rounded),
                            ),
                            Expanded(
                              child: Text(
                                "Informasi Tambahan",
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
                      return InformasiRekeningBank();
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
                              child: Icon(Icons.account_balance_rounded),
                            ),
                            Expanded(
                              child: Text(
                                "Informasi Rekening Bank",
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
                      return SosialMedia();
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
                              child: Icon(Icons.messenger),
                            ),
                            Expanded(
                              child: Text(
                                "Sosial Media",
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
                ]
            )
        )
    );
  }
}
