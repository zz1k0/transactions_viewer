import 'package:transactions_viewer/screens/login_screen.dart';

class User {
  final int userId;
  final String name;
  final String department;
  final String section;
  User(
      {required this.userId,
      required this.name,
      required this.department,
      required this.section});
}

List<User> users = [
  User(
      userId: 1, name: 'محمد', department: DEPARTMENT[0], section: SECTIONS[0]),
  User(userId: 2, name: 'علي', department: DEPARTMENT[1], section: SECTIONS[1]),
  User(userId: 3, name: 'حسن', department: DEPARTMENT[2], section: SECTIONS[2]),
];
