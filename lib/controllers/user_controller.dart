import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/models/user.dart';

class UserController {
  //save login info
  saveLoginInfo(
      int userId, String name, String department, String section) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setInt('userId', userId);
    await prefs.setString('name', name);
    await prefs.setString('department', department);
    await prefs.setString('section', section);
  }

  //get user info
  Future<User> getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return User(
      userId: prefs.getInt('userId')!,
      name: prefs.getString('name')!,
      department: prefs.getString('department')!,
      section: prefs.getString('section')!,
    );
  }
}
