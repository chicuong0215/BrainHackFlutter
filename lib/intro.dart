import 'dart:async';

import 'package:brain_hack/login.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Intro();
  }
}

class _Intro extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Login(),
            transitionDuration: const Duration(milliseconds: 1500),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ));
    });
    Widget tvLoading = const Text(
      'LOADING...',
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontFamily: 'Alata',
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              offset: Offset(1, 1),
              blurRadius: 1,
              color: Colors.white,
            )
          ]),
    );
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "images/bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'images/icon/circle_logo.gif',
                      width: 210,
                      height: 210,
                    ),
                    Image.asset(
                      'images/icon/logo_v2.png',
                      width: 210,
                      height: 210,
                    ),
                  ],
                ),
                Image.asset(
                  'images/icon/loading.gif',
                  width: 200,
                ),
                tvLoading
              ],
            ),
          )
        ],
      ),
    );
  }
}
