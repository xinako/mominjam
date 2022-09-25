import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/models/models.dart';

import '../repository/local data repository/local_db.dart';

class CurrentUserProvider with ChangeNotifier{
   User? currentUser;
  final SqlDb _sqlDb=SqlDb();
  loggedIn(String username)async{
    if (username.contains('@')) {
      username = username.substring(0, username.indexOf('@'));
    }
    currentUser = User.fromMap(await _sqlDb.currentUserid(username));
    notifyListeners();

  }
}