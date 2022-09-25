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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardTextStyle = TextStyle(
        fontFamily: 'Montserrat Regular',
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));
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
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C5603AQFpfXNXTvM5tw/profile-displayphoto-shrink_800_800/0/1632878555497?e=2147483647&v=beta&t=L4QIUyCdbOTw5Y3LQtxSMBUV_2Ppwe8fNJi_SuS1ojY'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Komako',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            // Text('40404040404'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/Money_bag.svg',
                                height: 150,
                              ),
                              Text(
                                'Personal Data Kominfo',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/Money_bag.svg',
                                height: 150,
                              ),
                              Text(
                                'Dokumen Asli Supersemar',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/Money_bag.svg',
                                height: 150,
                              ),
                              Text(
                                'Rahasia Pembunuhan Munir',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/Money_bag.svg',
                                height: 150,
                              ),
                              Text(
                                'Salam Pramuka',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
