import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

textView(text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      textDirection: TextDirection.rtl,
      style: GoogleFonts.cairo(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
