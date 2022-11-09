import 'package:brain_hack/detail_history.dart';
import 'package:brain_hack/dialog_picture.dart';
import 'package:brain_hack/friend_profile.dart';
import 'package:brain_hack/history.dart';
import 'package:brain_hack/intro.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/ranking.dart';
import 'package:brain_hack/result.dart';
import 'package:brain_hack/settings.dart';
import 'package:brain_hack/shop.dart';
import 'package:brain_hack/update_information.dart';
import 'package:brain_hack/waiting_room.dart';
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
      home: Intro(),
    );
  }
}
