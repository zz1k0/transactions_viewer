import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

textInput(String title, controller ,{isScureText = false }) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
    child: TextField(

      controller: controller,
      style: GoogleFonts.cairo(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      obscureText:  isScureText,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}
