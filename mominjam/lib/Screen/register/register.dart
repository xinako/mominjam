import 'package:flutter/material.dart';

void main() {
  return runApp(const MySimpleLogin());
}

class MySimpleLogin extends StatefulWidget {
  const MySimpleLogin({Key? key}) : super(key: key);

  @override
  State<MySimpleLogin> createState() => _MySimpleLoginState();
}

class _MySimpleLoginState extends State<MySimpleLogin> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Domine',
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Register Mo-Minjam"),
        centerTitle: true,),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 1),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 250,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Nama Lengkap",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "NIK",
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Nomor Telepon",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Nomor Rekening",
                      prefixIcon: Icon(Icons.account_balance),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => email = value),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => password = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 3, bottom: 11),
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Konfirmasi Password",
                      prefixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => password = value),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 1,
                    horizontal: 115,
                  ),
                  child: const Text(
                    "Sudah punya akun?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Headline',
                      color: Colors.indigo,
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
                          if (email.isEmpty || password.isEmpty) {
                            const message = 'Masukkan data dengan benar';
                            const snackBar = SnackBar(
                              content: Text(
                                message,
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.red,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            const message =
                                'Akun terdaftarkan';
                            const snackBar = SnackBar(
                              content: Text(
                                message,
                                style: TextStyle(fontSize: 20),
                              ),
                              backgroundColor: Colors.green,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        },
                        child: const Text(
                          "Daftar",
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
