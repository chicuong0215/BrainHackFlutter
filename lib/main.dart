import 'package:brain_hack/bag.dart';
import 'package:brain_hack/create_room.dart';
import 'package:brain_hack/edit_room.dart';
import 'package:brain_hack/intro.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/menu.dart';
import 'package:brain_hack/playing.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/room_item.dart';
import 'package:brain_hack/rooms.dart';
import 'package:brain_hack/shop.dart';
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
