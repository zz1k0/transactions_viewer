import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

zSnackBarInfo(text, color, {duration = 3 }) {
  return Get.snackbar(
    text,
    '',
    titleText: Center(child: Text(text , style: GoogleFonts.cairo(fontSize: 20.0 , color: Colors.white),),),
    // icon: const Icon(Icons.person, color: Colors.white),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color,
    borderRadius: 20,
    margin: const EdgeInsets.all(15),
    colorText: Colors.white,
    duration: Duration(seconds: duration),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeOutBack,
  );
}
