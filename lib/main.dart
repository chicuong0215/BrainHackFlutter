<<<<<<<<< Temporary merge branch 1
import 'package:brain_hack/list_friend.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/playing.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/rooms.dart';
=========
import 'package:brain_hack/create_room.dart';
import 'package:brain_hack/detail_history.dart';
import 'package:brain_hack/field_rank.dart';
import 'package:brain_hack/friend_item.dart';
import 'package:brain_hack/friend_profile.dart';
import 'package:brain_hack/history.dart';
import 'package:brain_hack/list_friend.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/menu.dart';
import 'package:brain_hack/playing.dart';
import 'package:brain_hack/register.dart';
import 'package:brain_hack/trainning.dart';
>>>>>>>>> Temporary merge branch 2
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
<<<<<<<<< Temporary merge branch 1
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Playing(),
    );
=========
    return MaterialApp(debugShowCheckedModeBanner: false, home: Trainning());
>>>>>>>>> Temporary merge branch 2
  }
}
