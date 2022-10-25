import 'package:brain_hack/forget_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ForgetPassword());
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
