import 'dart:ui';

import 'package:brain_hack/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
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
            margin: EdgeInsets.only(left: 40),
            child: const Text(
              'KẾT QUẢ',
              style: TextStyle(
                fontSize: 45,
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
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 40,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                Text(
                  'TD',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '2',
            style: GoogleFonts.bungee(
              textStyle: const TextStyle(
                fontSize: 60,
                color: Color(0xFF7843E6),
                shadows: [
                  Shadow(
                      blurRadius: 1.0,
                      color: Color(0xffFF00BF),
                      offset: Offset(-2.0, 2.0)),
                  Shadow(
                      blurRadius: 1.0,
                      color: Color(0xFF33f8ff),
                      offset: Offset(2.0, -2.0)),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1VS3',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 20,
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
                const Text(
                  'KHÓA HỌC~DỄ',
                  style: TextStyle(
                    fontSize: 10,
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                const Text(
                  'HG',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  '3',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 25,
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                const Text(
                  'CC',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  '1',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 25,
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                const Text(
                  'NA',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  '4',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 25,
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
    );
    Widget trueSentence = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 130,
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
            //color: Colors.red,
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'TD',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '17',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'HG',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '15',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'CC',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '20',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'NA',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '14',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
      height: 130,
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
            //color: Colors.red,
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'TD',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '3',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'HG',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '5',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'CC',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'NA',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '6',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
    Widget score = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 130,
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
              'SỐ ĐIỂM',
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
            //color: Colors.red,
            width: 300,
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'TD',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '260',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'HG',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '220',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'CC',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '300',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'NA',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '200',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 20,
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
    Widget time = Container(
      alignment: Alignment.center,
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 130,
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
            //color: Colors.red,

            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'TD',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '3P1S',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 18,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'HG',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '3P15S',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 18,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'CC',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '2P30S',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 18,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(image: AssetImage('images/icon/logo.png')),
                      ),
                      const Text(
                        'NA',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '3P20S',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 18,
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
    Widget personWin = Container(
      color: Color(0xff040020),
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 30,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                Text(
                  'CHICUONG',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WINNER',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Color(0xFF94DD26),
                      shadows: [
                        Shadow(
                            blurRadius: 1.0,
                            color: Color(0xFF33f8ff),
                            offset: Offset(1.0, -1.0)),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Text(
                    'MAX: 300',
                    style: GoogleFonts.bungee(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF3B4DA3),
                        shadows: [
                          Shadow(
                              blurRadius: 1.0,
                              color: Color(0xFF7843E6),
                              offset: Offset(1.0, -1.0)),
                        ],
                      ),
                    ),
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
              score,
              time,
              personWin,
            ],
          ),
          TextButton(
            onPressed: () {},
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
