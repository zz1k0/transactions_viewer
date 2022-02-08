import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/color_config.dart';
import 'package:http/http.dart' as http;
import 'package:transactions_viewer/models/user_profile.dart';
import 'package:transactions_viewer/screens/home_screen.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';

class LoginController {
  //login api
  Future<void> loginRequest() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    var url = Uri.parse('http://138.68.80.117/api/Login');

    var data = {'userName': 'user2@example.com', 'password': '12345678'};
    var body = json.encode(data);

    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      var token = decoded['token'];

      if (token != null || token != '') {
        _sharedPreferences.setString('token', decoded['token']);
        // send user and pass
        //server response
        // check the json for token
        // if token is not null
        // save token in shared preferences
        // navigate to home page
        // else
        // show error message

        //set the infoloaded to 0 because the user must firstly scan the qr and
        //then loadinfo becomes 1 so he can access the profile and pdf file

        //set show personal info false to ensure the user
        //read the qr code to new the info

        //go home screen
        Get.to(() => const HomeScreen());
        zSnackBarInfo("عمليه ناجحة", "اسم المستخدم موجود", GOLD_COLOR);
      } else {
        zSnackBarInfo("خطأ", "تأكد من معلومات الدخول", Colors.red);
      }
    } else {
      // if the server response is not 200
      zSnackBarInfo("خطأ", "خطأ في الخادم", Colors.red);
    }
  }
}
