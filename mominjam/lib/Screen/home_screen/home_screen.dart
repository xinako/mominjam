import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
        fontFamily: 'Montserrat Regular',
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));
    ThemeData(
      primarySwatch: Colors.indigo,
      fontFamily: 'Domine',
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/top_header.png',
              width: 600,
            ),
            height: size.height * .4,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         alignment: Alignment.topCenter,
            //         image: AssetImage('assets/images/top_header.png'))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C5603AQFpfXNXTvM5tw/profile-displayphoto-shrink_800_800/0/1632878555497?e=2147483647&v=beta&t=L4QIUyCdbOTw5Y3LQtxSMBUV_2Ppwe8fNJi_SuS1ojY'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        // Column(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: <Widget>[
                        //     Text(
                        //       'Komako',
                        //       style: TextStyle(
                        //           fontFamily: 'Montserrat Medium',
                        //           color: Colors.white,
                        //           fontSize: 15),
                        //     ),
                        //     // Text('40404040404'),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 65,
                    ),
                    child: const Text(
                      "Limit Pinjaman Anda :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Headline',
                        color: Color.fromARGB(221, 75, 57, 57),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 90,
                    ),
                    // margin: const EdgeInsets.only(
                    //     left: 20, right: 20, top: 1, bottom: 1),
                    child: const Text(
                      "Rp. 1.500.000,00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'Headline',
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 127.5,
                    ),
                    child: const Text(
                      "Nominal Pinjaman",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'Headline',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 1, bottom: 1),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        // labelText: "Email",
                        // prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      // onChanged: (value) => setState(() => email = value),
                      // keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 127.5,
                    ),
                    child: const Text(
                      "Nominal Pinjaman",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'Headline',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 1, bottom: 1),
                    width: double.infinity,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        // labelText: "Email",
                        // prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      // onChanged: (value) => setState(() => email = value),
                      // keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
