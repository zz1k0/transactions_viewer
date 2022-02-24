import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:transactions_viewer/controllers/login_controller.dart';
import 'package:transactions_viewer/screens/loading_page.dart';
import 'package:transactions_viewer/widget/snack_bar.dart';
import 'package:transactions_viewer/widget/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool internetAccess = false;
  bool _loading = false;
  @override
  void initState() {
    super.initState();
  }


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final LoginController _loginController = LoginController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'صفحة تسجيل الدخول',
            textAlign: TextAlign.center,
          ),
        ),
        automaticallyImplyLeading: true,
        actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: _loading == true
              ? LoadingPage(text: "جاري التحميل")
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      textInput('الأسم', usernameController),
                      textInput('كلمة المرور', passwordController , isScureText: true),
                      const Divider(),
                      const SizedBox(
                        height: 5.0,
                      ),
                      ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'دخول',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ),
                          onPressed: () async {
                            setState(() => _loading = true);
                                 await _loginController
                                .loginRequest(usernameController.text,
                                    passwordController.text)
                                .then((loginStatus ) =>
                                    setState(() =>  _loading = false  ));
                          }),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
