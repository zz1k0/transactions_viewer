import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transactions_viewer/controllers/user_profile_controller.dart';
import 'package:transactions_viewer/widget/text_view_with_value.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserProfileController _userProfileController =
        Get.put(UserProfileController());
    _userProfileController.requestUserProfile();
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
          child: Obx(
            () => SingleChildScrollView(
              child: Column(
                children: [
                  textViewWithValue('أسم المستخدم',
                      _userProfileController.username.value.toString()),
                  textViewWithValue(
                      'الايميل', _userProfileController.email.value.toString()),
                  textViewWithValue('رقم الهاتف',
                      _userProfileController.phoneNumber.value.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
