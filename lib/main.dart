import 'package:brain_hack/forget_password.dart';
import 'package:brain_hack/friend_profile.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(Menu());
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
