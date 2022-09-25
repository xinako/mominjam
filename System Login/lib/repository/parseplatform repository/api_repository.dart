import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import '../../consts/custom_enums.dart';

class ApiRepository {
  login(var user) async {
    ParseResponse response = await user.login();
    if (response.success) {
      return Authenticated.authenticated;
    } else {
      return Authenticated.notAuthenticated;
    }
  }

  submitForm(String password, String emailAddress) async {
    String username;
    if (emailAddress.contains('@')) {
      username = emailAddress.substring(0, emailAddress.indexOf('@'));
    } else {
      username = emailAddress;
    }

    var user = ParseUser(username, password, emailAddress);
    ParseResponse response = await user.signUp();
    if (response.success) {
      return login(user);
    } else {
      return login(user);
    }
  }
}
