import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/models/models.dart';
import '../repository/local data repository/local_db.dart';

enum BankStatementState { loading, loadedSuccess, failed }

class BankStatementProvider with ChangeNotifier {
  late Visa visa=Visa();
  String username = '';
  BankStatementState state = BankStatementState.loading;
  late WalletModel wallet=WalletModel();
  final SqlDb _sqlDb = SqlDb();

  readLocalStatement(String username) async {
    if (username.contains('@')) {
      username = username.substring(0, username.indexOf('@'));
    }
    this.username = username;
    try {
      var response = await _sqlDb.readBankStatement(this.username);
      visa = Visa.fromMap(response);
      wallet = WalletModel.fromMap(response);
      state = BankStatementState.loadedSuccess;
      print('readdd');
      notifyListeners();
    } catch (e) {
      state = BankStatementState.failed;
      notifyListeners();

    }
  }
}
