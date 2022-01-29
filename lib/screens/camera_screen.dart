import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';

class CameraScreen extends StatelessWidget {
  CameraScreen({Key? key}) : super(key: key);
  String scannedQr = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'صفحة قراءة الرمز',
            style: GoogleFonts.cairo(fontSize: 24),
          )),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              readQr();
            },
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

  //read the qr
  void readQr() async {
    try {
      //shared preferences
      SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();

      //set the infoloaded to 0 because the user must firstly scan the qr and
      //then loadinfo becomes 1 so he can access the profile and pdf file
      _sharedPreferences.setBool('infoLoaded', true);

      // //move to the next screen info
      // Get.to(const ProfileScreen());

      // String scannedImage = (await scanner.scan())!;
      // setState(() {
      //   scannedQr = scannedImage;
      // });

    } catch (e) {
      //show snackbar
      zSnackBarInfo('خطأ', 'لا يمكنك فتح الكاميرا', Colors.red);
    }
  }
}
