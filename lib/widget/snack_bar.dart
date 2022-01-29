import 'package:flutter/material.dart';
import 'package:get/get.dart';

zSnackBarInfo(text, subText, color, {duration = 4}) {
  return Get.snackbar(
    text,
    subText,
    icon: const Icon(Icons.person, color: Colors.white),
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
