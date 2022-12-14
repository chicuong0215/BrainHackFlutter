import 'package:brain_hack/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultTraining extends StatelessWidget {
  int numTrue;
  int numFalse;
  int s;
  int time;
  String linhVuc;
  ResultTraining(
      {Key? key,
      required this.numFalse,
      required this.numTrue,
      required this.s,
      required this.time,
      required this.linhVuc});

  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      decoration: const BoxDecoration(
        color: Color(0xFF090050),
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
            margin: EdgeInsets.only(left: 20),
            child: const Text(
              'KẾT QUẢ TẬP LUYỆN',
              style: TextStyle(
                fontSize: 25,
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
    Widget vResult = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CHỦ ĐỀ',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 45,
                      color: Color(0xffFF00BF),
                      shadows: [
                        Shadow(
                            blurRadius: 4.0,
                            color: Color.fromARGB(255, 218, 241, 13),
                            offset: Offset(-1.0, 1.0)),
                      ],
                    ),
                  ),
                ),
                Text(
                  '${linhVuc}',
                  style: TextStyle(
                    fontSize: 45,
                    color: Color(0xFF80AEFF),
                    shadows: [
                      Shadow(
                          blurRadius: 5.0,
                          color: Colors.white,
                          offset: Offset(-1.0, 1.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget trueSentence = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Color(0xFF33f8ff),
              ),
            ),
            child: Text(
              'SỐ CÂU ĐÚNG',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFC5658),
                  shadows: [
                    Shadow(
                        blurRadius: 1.0,
                        color: Colors.white,
                        offset: Offset(-1.0, 1.0)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${numTrue}',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 45,
                            color: Color(0xFF7843E6),
                            shadows: [
                              Shadow(
                                  blurRadius: 1.0,
                                  color: Color(0xffFF00BF),
                                  offset: Offset(-1.0, 1.0)),
                              Shadow(
                                  blurRadius: 1.0,
                                  color: Color(0xFF33f8ff),
                                  offset: Offset(1.0, -1.0)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget falseSentence = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Color(0xFF33f8ff),
              ),
            ),
            child: Text(
              'SỐ CÂU SAI',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFC5658),
                  shadows: [
                    Shadow(
                        blurRadius: 1.0,
                        color: Colors.white,
                        offset: Offset(-1.0, 1.0)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${20 - numTrue}',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 45,
                            color: Color(0xFF7843E6),
                            shadows: [
                              Shadow(
                                  blurRadius: 1.0,
                                  color: Color(0xffFF00BF),
                                  offset: Offset(-1.0, 1.0)),
                              Shadow(
                                  blurRadius: 1.0,
                                  color: Color(0xFF33f8ff),
                                  offset: Offset(1.0, -1.0)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget txtTime = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 180,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Color(0xFF33f8ff),
              ),
            ),
            child: Text(
              'THỜI GIAN',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFC5658),
                  shadows: [
                    Shadow(
                        blurRadius: 1.0,
                        color: Colors.white,
                        offset: Offset(-1.0, 1.0)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${time}',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 45,
                            color: Color(0xFFFFDF2B),
                            shadows: [
                              Shadow(
                                  blurRadius: 1.0,
                                  color: Color(0xFF33f8ff),
                                  offset: Offset(1.0, -1.0)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF3168D8),
      body: SingleChildScrollView(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              title,
              vResult,
              trueSentence,
              falseSentence,
              txtTime,
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Menu()));
            },
            child: const Text(
              'CHẠM VÀO MÀN HÌNH ĐỂ TIẾP TỤC',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffC1FDFF),
                shadows: [
                  Shadow(
                      blurRadius: 10.0,
                      color: Color(0xFFFFFD47),
                      offset: Offset(2.0, 2.0)),
                  Shadow(
                      blurRadius: 10.0,
                      color: Color(0xFFFFFD47),
                      offset: Offset(-2.0, -2.0)),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
