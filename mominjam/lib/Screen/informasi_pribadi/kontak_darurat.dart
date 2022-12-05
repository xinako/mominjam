import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class KontakDarurat extends StatefulWidget {
  const KontakDarurat({Key? key}) : super(key: key);

  @override
  State<KontakDarurat> createState() => _KontakDaruratState();
}

class _KontakDaruratState extends State<KontakDarurat> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kontak Darurat'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 20.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Kontak Darurat 1",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 5,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: "Saudara",
                      decoration: const InputDecoration(
                        labelText: "Hubungan",
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
                      initialValue: "+ 62 081*****7111",
                      decoration: const InputDecoration(
                        labelText: "Nomor Telepon",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Kontak Darurat 2",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 5,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: "Teman",
                      decoration: const InputDecoration(
                        labelText: "Hubungan",
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
                      initialValue: "+ 62 081*****9222",
                      decoration: const InputDecoration(
                        labelText: "Nomor Telepon",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Kontak Darurat 3 (Opsional)",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 5,
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      initialValue: " ",
                      decoration: const InputDecoration(
                        labelText: "Hubungan",
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
                        labelText: "Nomor Telepon",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => setState(() => email = value),
                      keyboardType: TextInputType.phone,
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