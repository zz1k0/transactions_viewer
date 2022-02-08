import 'package:transactions_viewer/screens/login_screen.dart';

class UserInfo {
  String? _userName;
  String? _password;

  UserInfo({String? userName, String? password}) {
    if (userName != null) {
      this._userName = userName;
    }
    if (password != null) {
      this._password = password;
    }
  }

  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  String? get password => _password;
  set password(String? password) => _password = password;

  UserInfo.fromJson(Map<String, dynamic> json) {
    _userName = json['userName'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this._userName;
    data['password'] = this._password;
    return data;
  }
}
