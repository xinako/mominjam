import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class InformasiPekerjaan extends StatefulWidget {
  const InformasiPekerjaan({Key? key}) : super(key: key);

  @override
  State<InformasiPekerjaan> createState() => _InformasiPekerjaanState();
}

class _InformasiPekerjaanState extends State<InformasiPekerjaan> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informasi Pekerjaan'),
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
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Bidang dan Pekerjaan",
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
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Nomor Telepon Kantor",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Tanggal Gajian",
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
                      initialValue: "Rp ",
                      decoration: const InputDecoration(
                        labelText: "Gaji Bulanan",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Lama Bekerja",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Alamat Kantor",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.name,
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