import 'package:shared_preferences/shared_preferences.dart';

class UserController {
  //save login username
  saveLoginSession(username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
  }
}
