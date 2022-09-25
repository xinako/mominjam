import 'package:flutter/material.dart';
import 'dart:math'as math;

import '../../../consts/consts.dart';

class WhiteClippedContainer extends StatelessWidget {
  const WhiteClippedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      left: width*0.2,
      top: height*0.35,
      child: Transform.rotate(
        
        angle:-math.pi/9,
        child: ClipPath(
          clipper: SmallClipper(),
          child: Container(
            color: backgroundColor,
            height: height / 3,
            width: width,
          ),
        ),
      ),
    );
  }
}

class SmallClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;

    path.lineTo(0, height * 0.6);
    Offset curveController = Offset(
      width * 0.6,
      height,
    );

    path.quadraticBezierTo(
        curveController.dx, curveController.dy, width, height * 0.3);

    Offset curveController2 = Offset(
      width * 0.5,
      height * .8,
    );
    path.lineTo(width, height * 0.1);
    path.quadraticBezierTo(
        curveController2.dx, curveController2.dy, 0, height * 0.6);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
