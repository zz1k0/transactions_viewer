import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactions_viewer/widget/button_view.dart';

import '../color_config.dart';
import '../main.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: GOLD_COLOR,
                ),
                child: Text(
                  'اخر عملية دخول بتاريخ',
                  style: GoogleFonts.cairo(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dateLogIn,
                  style: GoogleFonts.cairo(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              button_view(context, 'عن البرنامج',
                  color: GREEN_COLOR, textColor: Colors.white),
              const Divider(),
              button_view(context, 'حول البرنامج',
                  color: GREEN_COLOR, textColor: Colors.white),
              const Divider(),
              button_view(context, 'من نحن',
                  color: GREEN_COLOR, textColor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
