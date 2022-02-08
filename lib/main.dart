import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactions_viewer/screens/login_screen.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'color_config.dart';

Future<void> main() async {
  // Simple check to see if we have Internet
  // ignore: avoid_print
  print('''The statement 'this machine is connected to the Internet' is: ''');
  final bool isConnected = await InternetConnectionChecker().hasConnection;
  // ignore: avoid_print
  print(
    isConnected.toString(),
  );
  // returns a bool

  // We can also get an enum instead of a bool
  // ignore: avoid_print
  print(
      'Current status: ${await InternetConnectionChecker().connectionStatus}');
  // Prints either InternetConnectionStatus.connected
  // or InternetConnectionStatus.disconnected
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Info',
      theme: ThemeData(
        fontFamily: GoogleFonts.cairo().fontFamily,
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Palette.zPrimaryColor)
                .copyWith(secondary: const Color.fromRGBO(210, 190, 110, 1)),
      ),
      home: const LoginScreen(),
    );
  }
}




/*

user enter the app using name and password
user retrive his personal info by reading qr 
the qr converted to string and sent to server
server retrive to client the pdf file of the contract and images for every single 
which contain contract info and images 
every iimage has guid that must be included with every url to be fetched 
then merged with pdf file and display them as full pdf file that contains them 
  

*/