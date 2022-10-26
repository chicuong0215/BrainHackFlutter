import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(Menu());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Brain Hack'),
        ),
      ),
    );
  }
}
