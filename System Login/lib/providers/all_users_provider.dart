import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/models/models.dart';
import 'package:systel_assignment_mohamed/models/spent_model.dart';

import '../repository/local data repository/local_db.dart';

class UserHistoryProvider with ChangeNotifier {
  List<SpentModel> users = [];
  final SqlDb _sqlDb = SqlDb();

  getHistory() async {
    List<Map> tempList = await _sqlDb.userHistory();
    users = tempList.map((e) => SpentModel.fromMap(e)).toList();
    notifyListeners();
  }
}
