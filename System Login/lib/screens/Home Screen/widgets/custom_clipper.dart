import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height;
    final width = size.width;
    final halfOfHeight = height * 0.5;

    path.lineTo(0, halfOfHeight); //height of the starting point line of th the img
    Offset curveController = Offset(size.width / 6, height-50);
    Offset centerPoint =
        Offset(size.width / 3,  size.height/2); //center point in image
    path.quadraticBezierTo(
        curveController.dx, curveController.dy, centerPoint.dx, centerPoint.dy);
    Offset curveController2 = Offset(3*width/6, halfOfHeight/2,);
    path.quadraticBezierTo(
        curveController2.dx
        , curveController2.dy, 2*width/3, height*0.5);

    Offset curveController3 = Offset(width*0.83, height*0.9,);
    path.quadraticBezierTo(
        curveController3.dx
        , curveController3.dy, width*0.8, height*0.83);

    Offset curveController4= Offset(width*0.90, height,);
    path.quadraticBezierTo(
        curveController4.dx
        , curveController4.dy, width, height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
