import 'package:brain_hack/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingSate();
}

class _SettingSate extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/icon/head.png'), fit: BoxFit.contain),
      ),
      child: Row(
        children: [
          Container(
            child: IconButton(
              iconSize: 60,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Menu();
                    },
                  ),
                );
              },
              icon: const Image(
                image: AssetImage('images/icon/logo_v2.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: const Text(
              'CÀI ĐẶT',
              style: TextStyle(
                fontSize: 50,
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
    Widget languagebtn = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'TIẾNG VIỆT',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'TIẾNG ANH',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
    Widget soundbtn = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'BẬT',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'TẮT',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
    Widget vibratebtn = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'RUNG',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'IM LẶNG',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
    Widget settingbtn = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 45, right: 45, top: 15, bottom: 15),
              primary: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'THOÁT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 65, right: 65, top: 15, bottom: 15),
              primary: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Container(
        child: Column(
          children: [
            title,
            Container(
              //color: Colors.red,
              margin: EdgeInsets.only(top: 10),
              height: 250,
              width: 300,
              child: const Image(
                image: AssetImage('images/icon/logo_v2.png'),
                fit: BoxFit.cover,
              ),
            ),
            // Container(
            //   child: const Text(
            //     'CÀI ĐẶT',
            //     style: TextStyle(
            //       fontSize: 50,
            //       fontFamily: 'Fraunces',
            //       color: Color(0xffFF914D),
            //       shadows: [
            //         Shadow(
            //           blurRadius: 10.0,
            //           color: Color(0xFF48FCFF),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'NGÔN NGỮ:',
                style: GoogleFonts.bungee(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            languagebtn,
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'ÂM THANH:',
                style: GoogleFonts.bungee(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            soundbtn,
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'RUNG:',
                style: GoogleFonts.bungee(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            vibratebtn,
            Container(
              margin: EdgeInsets.only(top: 30),
              child: settingbtn,
            ),
          ],
        ),
      ),
    );
  }
}
