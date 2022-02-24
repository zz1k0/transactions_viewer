import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transactions_viewer/controllers/user_profile_controller.dart';
import 'package:transactions_viewer/screens/camera_screen.dart';

import 'package:transactions_viewer/screens/profile_screen.dart';
import 'package:transactions_viewer/screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    super.initState();
  }

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = const Color.fromRGBO(210, 190, 110, 1);
  Color unselectedColor = Colors.white;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  //screens
  List<Widget> pages = [
    const ProfileScreen(),
    const CameraScreen(),
    const AboutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedItemPosition],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 80.0,
        backgroundColor: const Color.fromRGBO(0, 140, 97, 1),
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'الصفحة الشخصية'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'الكاميرا'),
          BottomNavigationBarItem(
              icon: Icon(Icons.outbond), label: 'تاريخ الدخول'),
        ],
      ),
    );
  }
}
