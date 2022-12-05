import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class TentangKami extends StatefulWidget {
  const TentangKami({Key? key}) : super(key: key);

  @override
  State<TentangKami> createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tentang Kami'),
          centerTitle: true,
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.indigo,
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.update,
                    color: Colors.white,
                  ),
                  Text(
                    'Update',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 0,
                      bottom: 40,
                    ),
                    child: const Text(
                      "v1.0.0",
                      style: TextStyle(
                        fontSize: 20,
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
                      "          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(

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
                      "          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(

                        fontSize: 18,
                        fontFamily: 'Headline',
                        // color: Color.fromARGB(221, 229, 46, 214),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 7,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: const Text(
                      "          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(

                        fontSize: 18,
                        fontFamily: 'Headline',
                        // color: Color.fromARGB(221, 229, 46, 214),
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}