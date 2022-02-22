import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transactions_viewer/controllers/user_profile_controller.dart';
import 'package:transactions_viewer/screens/loading_page.dart';
import 'package:transactions_viewer/screens/login_screen.dart';
import 'package:transactions_viewer/widget/text_view_with_value.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var loading = false;

  String user = '';
  String email = '';
  String phoneNumber = '';
  String careerTitle = '',
      frontImage = '',
      backImage = '',
      nationalityNumber = '',
      province = '';

  @override
  void initState() {
    loadProfileInfo();
    // TODO: implement initState
    super.initState();
  }

  loadProfileInfo() async {
    setState(() => loading = true);

    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    user = _sharedPreferences.getString('user') ?? '';
    email = _sharedPreferences.getString('email') ?? '';
    phoneNumber = _sharedPreferences.getString('phoneNumber') ?? '';
    careerTitle = _sharedPreferences.getString('careerTitle') ?? '';
    province = _sharedPreferences.getString('province') ?? '';
    nationalityNumber = _sharedPreferences.getString('nationalityNumber') ?? '';
    frontImage = _sharedPreferences.getString('frontImage') ?? '';
    backImage = _sharedPreferences.getString('backImage') ?? '';

    setState(() => loading = false);
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
          child: loading == true
              ? const CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      textViewWithValue('أسم المستخدم', user),
                      textViewWithValue('الايميل', email),
                      textViewWithValue('رقم الهاتف', phoneNumber),
                      textViewWithValue('المهنة', careerTitle),
                      textViewWithValue('المدينة', province),
                      textViewWithValue('رقم الهوية', nationalityNumber),
                      ElevatedButton(
                        onPressed: () async {
                          SharedPreferences _sharedPreferences =
                              await SharedPreferences.getInstance();
                          _sharedPreferences.setString('username', '');
                          _sharedPreferences.setString('expireDate', '');

                          Get.off(const LoginScreen());
                        },
                        child: Text(
                          'تسجيل خروج',
                          style: GoogleFonts.cairo(
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
