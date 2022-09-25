import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/consts/consts.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size.width;
    return Container(
      width: 3*width/4,
      decoration: const BoxDecoration(
        color: errorColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              'Credentials are incorrect',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
