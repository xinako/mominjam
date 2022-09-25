import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import '../../../models/models.dart';

class LastActivity extends StatelessWidget {
  final Visa visa;
   const LastActivity({Key? key,required this.visa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String cash =visa.cash == null  ? '' : visa.cash.toString() ;
    String lastUsed= visa.lastUsed??'';
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFFA2A2A2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: const Center(
              child: Text(
                'Last Activity',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg icons/credit.svg'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: -math.pi / 2,
                      child: const Text(
                        'EGP',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                     Text(
                      cash,
                      style:
                          const TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                    ),
                  ],
                ),
                 Text(
                  'Last updated $lastUsed',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      wordSpacing: 0,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
