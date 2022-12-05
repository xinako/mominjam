import 'package:flutter/material.dart';
import '../succesful_page/successful_page.dart';

class SosialMedia extends StatefulWidget {
  const SosialMedia({Key? key}) : super(key: key);

  @override
  State<SosialMedia> createState() => _SosialMediaState();
}

class _SosialMediaState extends State<SosialMedia> {
  var email = "";
  var password = "";

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sosial Media'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),),
                      padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10.0,
                          bottom: 10.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Facebook",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              foregroundColor: Colors.indigo,
                              side: BorderSide(
                                  width: 1.0,
                                  color: Colors.indigo),
                            ),
                            onPressed: (){},
                            child: Text("Hubung"),
                          ),
                        ],
                      )
                  ),
                  Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),),
                      padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10.0,
                          bottom: 10.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  text: "Google",
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              foregroundColor: Colors.indigo,
                              side: BorderSide(
                                  width: 1.0,
                                  color: Colors.indigo),
                            ),
                            onPressed: (){},
                            child: Text("Hubung"),
                          ),
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
}