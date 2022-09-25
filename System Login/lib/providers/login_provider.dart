import 'package:flutter/material.dart';

import '../config/route/route_constants.dart';
import '../consts/custom_enums.dart';
import '../repository/local data repository/local_db.dart';
import '../repository/parseplatform repository/api_repository.dart';

enum state { initial, loading, success, failed }

class LoginProvider with ChangeNotifier {
  var currentState = state.initial;
  final SqlDb _sqlDb = SqlDb();
  final ApiRepository _apiRepository = ApiRepository();

  // CurrentUserProvider provider =CurrentUserProvider();

  submitForm(String email, String password, context) async {
    if (email.isEmpty || password.isEmpty || currentState == state.loading) {
      return;
    }
    currentState = state.loading;
    notifyListeners();
    final authenticated = await _apiRepository.submitForm(password, email);

    if (authenticated == Authenticated.authenticated) {
      _sqlDb.insertData(email);

      // provider.loggedIn(email);
      currentState = state.success;
      notifyListeners();
      Navigator.pushNamed(context, homeScreenRoute);
    } else {
      currentState = state.failed;
      notifyListeners();
    }
  }
}
