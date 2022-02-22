import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/color_config.dart';
import 'package:http/http.dart' as http;
import 'package:transactions_viewer/constants/api_path.dart';
import 'package:transactions_viewer/models/user_profile.dart';
import 'package:transactions_viewer/screens/home_screen.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';

import 'user_controller.dart';
import 'user_profile_controller.dart';

class LoginController {
  UserController _userController = UserController();

  UserProfile _userProfile = UserProfile();

  //user info
  var username = '...';
  var email = '...';
  var phoneNumber = '...';

  //contract info

  //fetch user info
  Future<void> requestUserProfile() async {
    try {
      //
      SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();

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

        await _sharedPreferences.setString(
            'user', _userProfile.userName.toString());
        await _sharedPreferences.setString(
            'email', _userProfile.email.toString());
        await _sharedPreferences.setString(
            'phoneNumber', _userProfile.phoneNumber.toString());

        await _sharedPreferences.setString(
            'careerTitle', _userProfile.userRead!.careerTitle.toString());

        await _sharedPreferences.setString('nationalityNumber',
            _userProfile.userRead!.nationalityNumber.toString());

        await _sharedPreferences.setString(
            'province', _userProfile.userRead!.province!.name.toString());

        await _sharedPreferences.setString(
            'frontImage',
            _userProfile.userRead!.userReaderAttachmentsReadDto![0].id
                .toString());

        await _sharedPreferences.setString(
            'backImage',
            _userProfile.userRead!.userReaderAttachmentsReadDto![1].id
                .toString());
      } else {
        zSnackBarInfo("", "حدث خطأ", GOLD_COLOR);
      }
    } catch (e) {
      // zSnackBarInfo("حدث خطأ في الخادم", e.toString(), GOLD_COLOR);
    }
  }

  //login api
  Future<void> loginRequest(String username, String password) async {
    try {
      SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();

      var url = Uri.parse(apiLogin);

      var data = {'userName': username, 'password': password};
      var body = json.encode(data);

      var response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: body);

      if (response.statusCode == 200) {
        var decoded = json.decode(response.body);

        var token = decoded['token'];
        var expireDate = decoded['expire'];

        if ((token != null || token != '') &&
            (expireDate != null || expireDate != '')) {
          _sharedPreferences.setString('token', token);
          _sharedPreferences.setString('expireDate', expireDate);

          //save login session
          await _userController.saveLoginSession(username);

          await requestUserProfile();

          //go home screen
          Get.off(() => const HomeScreen());

          //show snackbar
          zSnackBarInfo("عمليه ناجحة", "اسم المستخدم موجود", GOLD_COLOR);
        } else {
          //Show snackbar
          zSnackBarInfo(" ${response.statusCode.toString()} خطأ",
              "خطأ في الخادم", Colors.red);
        }
      } else if (response.statusCode == 401) {
        // if the server response is not 200
        zSnackBarInfo(
            "خطأ",
            "${response.statusCode.toString()}  تأكد من معلومات الدخول",
            Colors.red);
      }
    } catch (e) {
      zSnackBarInfo("حدث خطأ", e.toString(), Colors.red);
    }
  }
}
