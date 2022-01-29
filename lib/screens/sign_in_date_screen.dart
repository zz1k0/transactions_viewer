import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInDateScreen extends StatelessWidget {
  const SignInDateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'تاريخ الدخول',
              style: GoogleFonts.cairo(fontSize: 24),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Text(
            DateTime.now().toString().substring(0, 16),
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
