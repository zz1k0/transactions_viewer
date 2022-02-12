import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedLogin extends GetxController {
  var username = false.obs;
  var loading = true.obs;

  checkSavedLogin() async {
    loading.value = true;
    SharedPreferences _sharedPrefs = await SharedPreferences.getInstance();
    _sharedPrefs.getString('username') != null
        ? username.value = true
        : username.value = false;

    loading.value = false;
  }
}
