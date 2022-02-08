import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_config.dart';

button_view(context, text, {color = GOLD_COLOR, textColor = Colors.black}) {
  return Container(
    alignment: Alignment.centerRight,
    width: MediaQuery.of(context).size.width,
    height: 80.0,
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    margin: const EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: color,
    ),
    child: Text(
      text,
      style: GoogleFonts.cairo(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ),
  );
}
