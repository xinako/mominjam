import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/consts/consts.dart';

class YellowClippedContainer extends StatelessWidget {
  const YellowClippedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 2*height/3,
      child: ClipPath(
        clipper: BigClipper(),
        child: Container(
          color: primaryColor.withOpacity(0.4),
          height: 2*height/3,
          width:width,
        ),
      ),
    );
  }
}
class BigClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;


    path.lineTo(0,
        8 * size.height / 10); //height of the starting point line of th the img
    Offset curveController = Offset(
      width / 4,
      height,
    );
    path.quadraticBezierTo(
        curveController.dx, curveController.dy, width, 4 * height / 6);
    path.lineTo(width, height / 5);

    Offset curveController2 = Offset(
      width / 2,
      height * 0.6,
    );
    path.quadraticBezierTo(
        curveController2.dx, curveController2.dy, 0, 4 * height / 7);

    //path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}