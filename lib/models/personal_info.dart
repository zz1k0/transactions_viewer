class PersonalInfo {
  final int userId;
  final String address;
  final String phone;
  final String email;

  PersonalInfo(
      {required this.userId,
      required this.address,
      required this.phone,
      required this.email});
}

List<PersonalInfo> infos = [
  PersonalInfo(
      userId: 1,
      address:
          "No.1, Jalan Sri Putra 1, Taman Sri Putra, 50490 Kuala Lumpur, Malaysia",
      phone: "0123456789",
      email: "test1"),
  PersonalInfo(
      userId: 2,
      address:
          "No.1, mohammed Sri Putra 1, Taman Sri Putra, 50490 Kuala Lumpur, Malaysia",
      phone: "0123456789",
      email: "test2"),
  PersonalInfo(
      userId: 3,
      address:
          "No.1, zakria Sri Putra 1, Taman Sri Putra, 50490 Kuala Lumpur, Malaysia",
      phone: "0123456789",
      email: "test3"),
];
