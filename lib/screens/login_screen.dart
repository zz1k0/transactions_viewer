import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/controllers/login_controller.dart';
import 'package:transactions_viewer/controllers/user_controller.dart';
import 'package:transactions_viewer/models/user.dart';
import 'package:transactions_viewer/screens/home_screen.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';
import 'package:transactions_viewer/widget/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialInternetChecker();
  }

  final LoginController _loginController = LoginController();
  final UserController _userController = UserController();

  void initialInternetChecker() {
    // actively listen for status updates
    final StreamSubscription<InternetConnectionStatus> listener =
        InternetConnectionChecker().onStatusChange.listen(
      (InternetConnectionStatus status) async {
        switch (status) {
          case InternetConnectionStatus.connected:
            // ignore: avoid_print
            zSnackBarInfo(
                'متصل بالأنترنت', 'اتصال انترنت امن متوفر', Colors.green);
            break;
          case InternetConnectionStatus.disconnected:
            // ignore: avoid_print
            zSnackBarInfo('غير متصل', 'فشل الأتصال بالأنترنت', Colors.red);

            break;
        }
      },
    );

    // close listener after 30 seconds, so the program doesn't run forever
    // await Future<void>.delayed(const Duration(seconds: 1));
    // await listener.cancel();
  }

  final usernameController = TextEditingController();

  final departmentController = TextEditingController();

  // final myController = TextEditingController();

  //department initial value
  String departmentValue = 'المالية';

  //  section initial value
  String sectionValue = 'دائرة التقاعد العامة';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'صفحة تسجيل الدخول',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                textInput('الأسم', usernameController),
                const SizedBox(
                  height: 5.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
                //text title for sections drop down menu
                Text(
                  'الدائرة',
                  style: GoogleFonts.cairo(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                //drop down for departments
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: DropdownButton(
                    value: sectionValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: SECTIONS.map((String items) {
                      return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: items,
                          child: Center(
                            child: Text(
                              items,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) => setState(() {
                      sectionValue = value.toString();
                    }),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
                //text title for sections drop down menu
                Text(
                  'القسم',
                  style: GoogleFonts.cairo(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                //drop down for sections
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: DropdownButton(
                    value: departmentValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: DEPARTMENT.map((String items) {
                      return DropdownMenuItem(
                          alignment: Alignment.center,
                          value: items,
                          child: Center(
                            child: Text(
                              items,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ));
                    }).toList(),
                    onChanged: (value) => setState(() {
                      departmentValue = value.toString();
                    }),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  child: const Text(
                    'دخول',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  onPressed: () async {
                    User? user = _loginController.selectUser(
                      usernameController.text,
                      departmentValue,
                      sectionValue,
                    );

                    if (user == null) {
                      zSnackBarInfo(
                          "خطأ", "تأكد من معلومات الدخول", Colors.red);
                    } else {
                      //save login info to shared preferences
                      _userController.saveLoginInfo(
                        user.userId,
                        user.name,
                        user.department,
                        user.section,
                      );

                      zSnackBarInfo("عمليه ناجحة", "اسم المستخدم موجود",
                          const Color.fromRGBO(210, 190, 110, 1));

                      //shared preferences
                      SharedPreferences _sharedPreferences =
                          await SharedPreferences.getInstance();

                      //set the infoloaded to 0 because the user must firstly scan the qr and
                      //then loadinfo becomes 1 so he can access the profile and pdf file
                      _sharedPreferences.setBool('infoLoaded', false);
                      Get.to(const HomeScreen());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var DEPARTMENT = [
  'المالية',
  'الأدارية',
  'القانونية',
  'الامنيه',
  'الموارد البشرية',
];

var SECTIONS = [
  'دائرة التقاعد العامة',
  'دائرة التقاعد الخاصة',
  ' الدائرة الخاصة بالأدارية',
];
