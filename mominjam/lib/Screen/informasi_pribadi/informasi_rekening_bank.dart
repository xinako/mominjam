import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class InformasiRekeningBank extends StatefulWidget {
  const InformasiRekeningBank({Key? key}) : super(key: key);

  @override
  State<InformasiRekeningBank> createState() => _InformasiRekeningBankState();
}

class _InformasiRekeningBankState extends State<InformasiRekeningBank> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informasi Rekening Bank'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                      bottom: 5,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: "MUHAMMAD GOZY AL VAIZ",
                      decoration: const InputDecoration(
                        labelText: "Nama Pemilik Rekening",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: "Bank Tabungan Negara(BTN)",
                      decoration: const InputDecoration(
                        labelText: "Nama Bank/Nama Dompet",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: "0002 **** **** 1419",
                      decoration: const InputDecoration(
                        labelText: "Nomor Rekening Bank",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.number,
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

                            // final message =
                            //     'Email: $email\nPassword: $password';
                            // final snackBar = SnackBar(
                            //   content: Text(
                            //     message,
                            //     style: const TextStyle(fontSize: 20),
                            //   ),
                            //   backgroundColor: Colors.green,
                            // );
                            // ScaffoldMessenger.of(context)
                            //     .showSnackBar(snackBar);
                          },
                          child: const Text(
                            "Simpan",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )),
                ]
            )
        )
    );
  }
}