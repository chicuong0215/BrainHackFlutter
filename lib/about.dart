import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _About();
  }
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/icon/head.png'), fit: BoxFit.contain),
      ),
      child: Row(
        children: [
          Container(
            child: IconButton(
              iconSize: 60,
              onPressed: () {},
              icon: const Image(
                image: AssetImage('images/icon/logo_v2.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, top: 10),
            child: const Text(
              'THÔNG TIN',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Fraunces',
                color: Color(0xFFFC5658),
                shadows: [
                  Shadow(
                      blurRadius: 1.0,
                      color: Color(0xFF33f8ff),
                      offset: Offset(2.0, -1.0)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    Widget btnCheckUpdate = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        // Navigator.push(
        //     context,
        //     PageRouteBuilder(
        //       pageBuilder: (_, __, ___) => Menu(),
        //       transitionDuration: const Duration(milliseconds: 500),
        //       transitionsBuilder: (_, a, __, c) =>
        //           FadeTransition(opacity: a, child: c),
        //     ));
      },
      child: const Text(
        'KIỂM TRA CẬP NHẬT',
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Alata',
        ),
      ),
    );
    Widget tvAppName = const Text(
      'BrainHack',
      style: TextStyle(
          color: Color.fromARGB(255, 71, 92, 195),
          fontSize: 45,
          fontFamily: 'Alata',
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 1,
              color: Color.fromARGB(255, 61, 255, 252),
            )
          ]),
    );
    Widget tvVersion = Container(
      padding: const EdgeInsets.only(left: 10),
      child: const Text(
        'Version: 1.0',
        style: TextStyle(
            color: Color(0xFFA6A6A6),
            shadows: [
              Shadow(offset: Offset(1, 1), color: Colors.pink, blurRadius: 1)
            ],
            fontWeight: FontWeight.bold,
            fontSize: 21),
      ),
    );
    Widget tvCopyright = const Text(
      'CGD @ Copyright',
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
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
          title,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [tvAppName, tvVersion],
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                btnCheckUpdate,
                const Padding(padding: EdgeInsets.only(top: 30)),
                tvCopyright
              ],
            ),
          )
        ],
      ),
    );
  }
}
