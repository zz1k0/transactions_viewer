import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

textView(text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2.0 , vertical: 4.0),
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: GoogleFonts.cairo(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
