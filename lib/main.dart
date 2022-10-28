import 'package:brain_hack/forget_password.dart';
import 'package:brain_hack/friend_profile.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/menu.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/update_information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FriendProfile(),
    );
  }
}
