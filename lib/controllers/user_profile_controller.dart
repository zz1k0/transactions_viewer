import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/constants/api_path.dart';
import 'package:transactions_viewer/models/user_profile.dart';

class UserProfileController extends GetxController {
  UserProfile _userProfile = UserProfile();

  //user info
  var username = '...'.obs;
  var email = '...'.obs;
  var phoneNumber = '...'.obs;

  //contract info

  //fetch user info
  Future<void> requestUserProfile() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    print('+++++++++++++++++++++++++++++++');
    print(_sharedPreferences.getString('username'));

    String? token = _sharedPreferences.getString('token');

    var url = Uri.parse(apiGetProfile);

    var response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      _userProfile = UserProfile.fromJson(decoded);

      username.value = _userProfile.userName.toString();
      email.value = _userProfile.email.toString();
      phoneNumber.value = _userProfile.phoneNumber.toString();
    }
  }
}

//now i must found a way to fill the user profile data
//and then i must found a way to get the user profile data
