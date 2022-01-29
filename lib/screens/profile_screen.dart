import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/controllers/user_controller.dart';
import 'package:transactions_viewer/models/user.dart';
import 'package:transactions_viewer/screens/pdf_viewer_screen.dart';
import 'package:transactions_viewer/widget/text_view.dart';
import 'package:transactions_viewer/widget/text_view_with_value.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final UserController _userController = UserController();
  User user =
      User(userId: 0, name: 'null', department: 'null', section: 'null');

  bool loadedInfo = false;

  loadUserInfo() async {
    //shared preferences
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    //set the infoloaded to 0 because the user must firstly scan the qr and
    //then loadinfo becomes 1 so he can access the profile and pdf file
    loadedInfo = _sharedPreferences.getBool('infoLoaded')!;

    var userInfo = await _userController.getUserInfo();

    setState(() {
      user = userInfo;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'المعلومات الشخصية',
              style: GoogleFonts.cairo(fontSize: 24),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: loadedInfo == false
              ? const Text('افتح الكاميرا اولا وامسح الرمز ')
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      textViewWithValue('الأسم', user.name),
                      textViewWithValue('القسم', user.department),
                      textViewWithValue('الدائرة', user.section),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            Get.to(const PDFViewer());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              'فتح الملف الشخصي',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
