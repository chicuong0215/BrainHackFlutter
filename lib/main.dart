import 'package:brain_hack/forget_password.dart';
import 'package:brain_hack/input_new_password.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/register.dart';
import 'package:brain_hack/update_information.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
