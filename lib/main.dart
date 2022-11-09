import 'package:brain_hack/dialog_picture.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/result.dart';
import 'package:brain_hack/update_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Result(),
    );
  }
}
