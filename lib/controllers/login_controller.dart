import 'package:transactions_viewer/models/user.dart';

class LoginController {
  selectUser(name, department, section) {
    for (var user in users) {
      if (user.name == name &&
          user.department == department &&
          user.section == section) {
        return user;
      }
    }
    return null;
  }
}
