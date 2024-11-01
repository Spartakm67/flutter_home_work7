import 'package:flutter/material.dart';
import 'package:flutter_home_work7/screens/profile_page.dart';

void main() {
  runApp(const ProfileApp(),);
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
