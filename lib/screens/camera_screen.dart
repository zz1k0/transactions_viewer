import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactions_viewer/controllers/contract_info_controller.dart';

class CameraScreen extends StatelessWidget {
  CameraScreen({Key? key}) : super(key: key);
  String scannedQr = '';
  @override
  Widget build(BuildContext context) {
    final PersonalContractInfoController _personalContractInfoController =
        Get.put(PersonalContractInfoController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'صفحة قراءة الرمز',
              style: GoogleFonts.cairo(fontSize: 24),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async => await _personalContractInfoController
                .getContractDetails('test'),
            child: Text(
              'فتح الكاميرا',
              style: GoogleFonts.cairo(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
