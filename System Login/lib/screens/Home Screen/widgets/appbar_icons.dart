import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class AppIcons extends StatelessWidget {
  const AppIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(
              'assets/svg icons/noun-notification-1117323.svg'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(
              'assets/svg icons/Category Icon.svg'),
        ),
      ],
    );
  }
}
