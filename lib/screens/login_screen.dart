import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:transactions_viewer/controllers/login_controller.dart';
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
    super.initState();
    initialInternetChecker();
  }

  void initialInternetChecker() {
    // actively listen for status updates
    // final StreamSubscription<InternetConnectionStatus> listener =
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
  final passwordController = TextEditingController();

  final departmentController = TextEditingController();

  // final myController = TextEditingController();

  //department initial value
  String departmentValue = 'المالية';

  //  section initial value
  String sectionValue = 'دائرة التقاعد العامة';

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
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                textInput('الأسم', usernameController),
                textInput('كلمة المرور', passwordController),
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
                  onPressed: () async => await _loginController.loginRequest(
                      usernameController.text, passwordController.text),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
