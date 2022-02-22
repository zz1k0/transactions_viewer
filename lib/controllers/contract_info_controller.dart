import 'dart:convert';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/constants/api_path.dart';
import 'package:http/http.dart' as http;
import 'package:transactions_viewer/widget/snack_bar.dart';

class PersonalContractInfoController extends GetxController {
  // final PersonalContractInfoModel _personalContractInfoModel =
  //     PersonalContractInfoModel();

  PersonalContractInfoController({this.qrCode});
  final qrCode;

  var pdfUrl = ''.obs;
  var vailedUrl = false.obs;

  var fromUser = ''.obs;
  var toUser = ''.obs;
  var isRejected = ''.obs;
  var isCanceled = ''.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getContractDetails(qrCode);
    //  await getPDFUrl();
    // print('show post return value: $posts
    // ');
  }

  Future getContractDetails(qrCode) async {
    //scan the qr code
    await Permission.camera.request();

    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    String? token = _sharedPreferences.getString('token');

    var url = Uri.parse(apiGetQrInfo + qrCode);

    var response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      fromUser.value =
          decoded['contractModel']['contractPartsDetails']['from']['fullName'];
      //identity for the user to
      toUser.value =
          decoded['contractModel']['contractPartsDetails']['to']['fullName'];

      isRejected.value = decoded['contractModel']['isRejected'];

      isCanceled.value = decoded['contractModel']['isCanceled'];

      // pdfUrl.value =
      //     decoded['pdf'].substring(0, decoded['pdf'].length - 3) + "pdf";
    } else if (response.statusCode == 404) {
      zSnackBarInfo("خطأ", "لايوجد", Colors.red);
    } else if (response.statusCode == 403) {
      zSnackBarInfo("خطأ", "غير مسموح لهذا المستخدم بعرض الملف", Colors.red);
    } else {
      zSnackBarInfo("خطأ", "خطأ في الخادم", Colors.red);
    }
  }

  // getPDFUrl() async {
  //   try {
  //     SharedPreferences _sharedPreferences =
  //         await SharedPreferences.getInstance();

  //     String? token = _sharedPreferences.getString('token');

  //     pdfUrl.value = pdfUrl.value
  //             .toString()
  //             .substring(0, pdfUrl.value.toString().length - 3) +
  //         "pdf";

  //     var url = Uri.parse(pdfUrl.value);

  //     var response = await http.get(
  //       url,
  //       headers: {
  //         "Content-Type": "application/json",
  //         'Authorization': 'Bearer $token',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       //if the file readable
  //       // fromUser.value = _sharedPreferences.getString('fromUser')!;
  //       // toUser.value = _sharedPreferences.getString('toUser')!;
  //       // isRejected.value = _sharedPreferences.getString('isRejected')!;
  //       // isCancelled.value = _sharedPreferences.getString('isCanceled')!;

  //       vailedUrl.value = true;
  //       return true;
  //     } else if (response.statusCode == 404) {
  //       // zSnackBarInfo("خطأ", "لا يوجد ملف بهذا الاسم", Colors.red);
  //       vailedUrl.value = false;
  //       return false;
  //     } else if (response.statusCode == 403) {
  //       // zSnackBarInfo("خطأ", "لا يوجد صلاحية لفتح الملف", Colors.red);
  //       vailedUrl.value = false;
  //       return false;
  //     } else if (response.statusCode == 401) {
  //       // zSnackBarInfo("خطأ", "يجب تسجيل الدخول اولا", Colors.red);
  //       vailedUrl.value = false;
  //       return false;
  //     } else {
  //       //  zSnackBarInfo(
  //       //    "خطأ", "${response.statusCode.toString()}  رمز الخطأ", Colors.red);
  //       vailedUrl.value = false;
  //       return false;
  //     }
  //   } catch (e) {
  //     // Get.off(const HomeScreen());
  //     // zSnackBarInfo("خطأ", e.toString(), Colors.red);
  //     vailedUrl.value = false;
  //     return false;
  //   }
  // }
}
