import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class LayananPelanggan extends StatefulWidget {
  const LayananPelanggan({Key? key}) : super(key: key);

  @override
  State<LayananPelanggan> createState() => _LayananPelangganState();
}

class _LayananPelangganState extends State<LayananPelanggan> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layanan Pelanggan'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                          top: 28.0,
                          bottom: 28.0
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Bantuan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    text: "Lebih Banyak",
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                        Icons.navigate_next_rounded,
                                        size: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]
                      ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 0.0,
                        bottom: 0.0
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Pinjaman"),
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                minimumSize: Size(150, 50)
                              )
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Keamanan Akun"),
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(150, 50)
                              )
                          ),
                        ],
                    ),
                  ),
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
                            child: Text("Opsi Lainnya"),
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black,
                                minimumSize: Size(150, 50)
                            )
                        ),
                        OutlinedButton(
                            onPressed: (){},
                            child: Text("Ttd Elektronik"),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.black,
                                minimumSize: Size(150, 50)
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          left: 30.0,
                          top: 10.0,
                          bottom: 0.0,
                          right: 30.0,
                      ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.phone,
                            size: 24,
                            color: Colors.green,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "02130007000",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Telepon"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 0.0,
                      bottom: 0.0,
                      right: 30.0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.mail_rounded,
                            size: 24,
                            color: Colors.blue,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "cs@mominjam.co.id",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Kirim"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 0.0,
                      bottom: 0.0,
                      right: 30.0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.message,
                            size: 24,
                            color: Colors.orange,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Kritik dan Saran",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Detil"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 0.0,
                      bottom: 0.0,
                      right: 30.0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.info_rounded,
                            size: 24,
                            color: Colors.green,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Informasi",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Detil"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 0.0,
                      bottom: 0.0,
                      right: 30.0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.description_rounded,
                            size: 24,
                            color: Colors.blue,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Syarat dan Ketentuan",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Detil"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 0.0,
                      bottom: 0.0,
                      right: 30.0,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.shield_rounded,
                            size: 24,
                            color: Colors.green,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Kebijakan Privasi",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                              onPressed: (){},
                              child: Text("Detil"),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(100, 25)
                              )
                          ),
                        ]
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 0.0,
                      top: 30.0,
                      bottom: 0.0,
                      right: 0.0,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                            text: "Senin - Jumat:",
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            text: " 08:00 - 17.00 WITA",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 0.0,
                      top: 20.0,
                      bottom: 0.0,
                      right: 0.0,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                            text: "Sabtu - Minggu/Libur Nasional:",
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            text: " 08:00 - 16.00 WITA",
                          ),
                        ],
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }
}