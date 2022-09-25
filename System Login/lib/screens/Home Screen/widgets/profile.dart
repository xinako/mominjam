import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:systel_assignment_mohamed/providers/current_user_provider.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentUserProvider>(
        builder: (context, provider, child) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                  'assets/svg icons/c3cd4975a055a1b42367a9d24b3222d3.png'),
            ),
            Column(
              children:  [
                const Text(
                  'Good Evening,',
                  style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Text(
                  provider.currentUser?.username ?? '...',
                  style: const TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            )
          ],
        );
      }
    );
  }
}
