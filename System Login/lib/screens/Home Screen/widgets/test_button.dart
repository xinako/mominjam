import 'package:flutter/material.dart';

class TestButton extends StatelessWidget {
  const TestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 4,
          ),
          Text(
            "Test",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                ),
          ),
          const Spacer(
            flex: 3,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
