import 'dart:convert';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/models/personal_contract_info.dart';
import 'package:http/http.dart' as http;
import 'package:transactions_viewer/screens/pdf_viewer_screen.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';

class PersonalContractInfoController extends GetxController {
  final PersonalContractInfoModel _personalContractInfoModel =
      PersonalContractInfoModel();

  var pdfUrl = ''.obs;

  Future _scan() async {
    await Permission.camera.request();
    String? barcode = await scanner.scan();
  }

  Future getContractDetails(String ndk) async {
    //scan the qr code
    await _scan();

    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    String? token = _sharedPreferences.getString('token');

    var url = Uri.parse('http://138.68.80.117/api/GetContractByUserReader/NDk');

    var response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      var fromUser =
          decoded['contractModel']['contractPartsDetails']['from']['id'];
      //identity for the user to
      var toUser = decoded['contractModel']['contractPartsDetails']['to']['id'];

      pdfUrl.value =
          decoded['pdf'].substring(0, decoded['pdf'].length - 3) + "pdf";

      _sharedPreferences.setString('fromUser', fromUser);
      _sharedPreferences.setString('toUser', toUser);
      _sharedPreferences.setString('pdf_url', pdfUrl.value);

      Get.to(() => const PDFViewer());
    } else {
      zSnackBarInfo("خطأ", "خطأ في الخادم", Colors.red);
    }
  }

  getPDFUrl() => pdfUrl;
}
