import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:systel_assignment_mohamed/providers/providers.dart';
import 'widgets.dart';
class BankStatement extends StatelessWidget {
  const BankStatement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child:  Consumer<BankStatementProvider>(
          builder: (context, provider, child) {
          return GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children:  [
              Wallet(wallet:provider.wallet),
              LastActivity(visa:provider.visa),
            ],
          );
        }
      ),
    );
  }
}
