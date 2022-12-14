import 'package:brain_hack/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  int numTrue;
  int numFalse;
  int s;
  int time;
  String linhVuc;
  int capDo;
  Result(
      {Key? key,
      required this.numFalse,
      required this.numTrue,
      required this.s,
      required this.time,
      required this.linhVuc,
      required this.capDo});

  final _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _user =
      FirebaseFirestore.instance.collection('Account');

  Future<void> capNhatDiem() async {
    DocumentReference col = _user.doc(_auth.currentUser?.email);
    col.get().then((value) => {
          _user.doc(_auth.currentUser?.email).update(
              {"Score": s + value['Score'], linhVuc: s + value['Score']})
        });
  }

  Future<void> themLichSu() {
    CollectionReference history =
        FirebaseFirestore.instance.collection('History');
    return history.add({
      'Email': _auth.currentUser?.email,
      'NumTrue': numTrue,
      'NumFalse': 20 - numTrue,
      'TimeLine': time,
      'Score': s,
      'Type': linhVuc,
      'Level': capDo,
      'Time': DateTime.now()
    });
  }

  @override
  Widget build(BuildContext context) {
    themLichSu();
    capNhatDiem();
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
              'K???T QU???',
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
                  'B???N',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
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
                  '1VS1',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 50,
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
                    fontSize: 30,
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
              children: const [
                CircleAvatar(
                  radius: 40,
                  child: Image(image: AssetImage('images/icon/logo.png')),
                ),
                Text(
                  'B???N',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.orange,
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
              'S??? C??U ????NG',
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
                        'B???n',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '${numTrue}',
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
                        '---',
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
              'S??? C??U SAI',
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
                        'B???n',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '${20 - numTrue}',
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
                        '---',
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
              'S??? ??I???M',
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
                        'B???n',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '${s}',
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
                        '---',
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
    Widget txttime = Container(
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
              'TH???I GIAN',
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
                        'B???n',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        '${time}',
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
                        '---',
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
              children: [
                Text(
                  'T???NG ??I???M',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 30,
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
                  margin: EdgeInsets.only(left: 150),
                  child: Text(
                    'MAX: 300',
                    style: GoogleFonts.bungee(
                      textStyle: const TextStyle(
                        fontSize: 30,
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
              txttime,
              personWin,
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Menu()));
            },
            child: const Text(
              'CH???M V??O M??N H??NH ????? TI???P T???C',
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
