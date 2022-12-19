import 'package:brain_hack/detail_history.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final _user = FirebaseAuth.instance;
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
            margin: EdgeInsets.only(
              left: 50,
            ),
            child: const Text(
              'LỊCH SỬ',
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
    Widget img = Container(
      width: 40,
      height: 40,
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 183, 76),
        radius: 30,
        child: Image(
          image: AssetImage('images/icon/logo_v2.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('History')
              .where('Email', isEqualTo: _user.currentUser!.email.toString())
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                title,
                Column(
                  children: snapshot.data!.docs.map((document) {
                    return Container(
                      child: Container(
                        child: Column(
                          children: [
                            LichSu(
                              numTrue: document['NumTrue'],
                              numFalse: document['NumFalse'],
                              timeLine: document['TimeLine'],
                              time: document['Time'],
                              type: document['Type'],
                              score: document['Score'],
                              linhVuc: document['Type'],
                              capDo: document['Level'],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(''),
          shape: CircleBorder(side: BorderSide()),
          icon: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class LichSu extends StatelessWidget {
  int numTrue;
  int numFalse;
  Timestamp time;
  int timeLine;
  String type;
  int score;
  String linhVuc;
  int capDo;
  LichSu(
      {Key? key,
      required this.numFalse,
      required this.numTrue,
      required this.time,
      required this.timeLine,
      required this.type,
      required this.score,
      required this.capDo,
      required this.linhVuc});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 400,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 10, 85, 126),
            Color.fromARGB(255, 53, 141, 255),
            Color.fromARGB(255, 51, 81, 201)
          ]),
          //border: Border.all(width: 2, color: Colors.red),
        ),
        child: Row(
          children: [
            Container(
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 30,
                child: Image(
                  image: AssetImage('images/icon/logo_v2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'ĐÚNG: $numTrue',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Fraunces',
                      color: Color(0xFFFC5658),
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Color(0xFFFf0099),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'SAI: $numFalse',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Fraunces',
                      color: Color(0xFFFC5658),
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Color(0xFFFf0099),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'ĐIỂM: $score',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Fraunces',
                      color: Color(0xFFFC5658),
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Color(0xFFFf0099),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Lĩnh vực: $linhVuc',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Fraunces',
                      color: Color(0xFFFC5658),
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Color(0xFFFf0099),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Cấp độ: $capDo ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Fraunces',
                      color: Color(0xFFFC5658),
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Color(0xFFFf0099),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 20)),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    //color: Colors.orange,
                    border: Border(
                      left: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return DetailHistory(
                          score: 100,
                          name: '',
                          numTrue: 5,
                          numFalse: 5,
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.more_horiz_rounded)),
            )
          ],
        ),
      ),
    );
  }
}
