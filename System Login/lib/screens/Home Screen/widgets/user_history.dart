import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/providers.dart';
import 'dart:math' as math;

class UserHistory extends StatelessWidget {
  const UserHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<UserHistoryProvider>(builder: (context, provider, child) {
      return Expanded(
        flex: 3,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: provider.users.length,
              itemBuilder: (BuildContext context, int index) {
                return TweenAnimationBuilder(
                    tween: Tween<double>(begin: 70, end: 0),
                    curve: Curves.easeInOutSine,
                    duration: Duration(
                        milliseconds:
                            500 + (130 * (provider.users.length - index))),
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return Transform.translate(
                        offset: Offset(value, 0),
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          //color: Colors.green,
                          height: 300,
                          width: 150,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                top: 40,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Color(0xFFFBB03B),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        width: double.infinity,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Text(
                                                '${provider.users[index].username}',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Text(
                                                'Total Spending',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Transform.rotate(
                                                    angle: -math.pi / 2,
                                                    child: const Text('EGP')),
                                                Text(
                                                  '${provider.users[index].spent}',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 24),
                                                ),
                                              ],
                                            ),
                                            Text(
                                                'Last Spent ${provider.users[index].last_update}'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: Image.asset(
                                  'assets/svg icons/c3cd4975a055a1b42367a9d24b3222d3.png',
                                  height: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
        ),
      );
    });
  }
}
