import 'package:brain_hack/detail_history.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  final _user = FirebaseAuth.instance;
  int index = 1;
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
              .collection('Account')
              .orderBy('Score', descending: true)
              .limit(10)
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
                //LinhVuc(),
                Column(
                  children: snapshot.data!.docs.map((document) {
                    return Container(
                      child: Container(
                        child: Column(
                          children: [
                            RankingItem(
                                index: index++,
                                avatar: '',
                                name: document['FullName'],
                                score: document['Score'])
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

class RankingItem extends StatelessWidget {
  int index;
  String avatar;
  String name;
  int score;
  RankingItem(
      {Key? key,
      required this.index,
      required this.avatar,
      required this.name,
      required this.score})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 410,
                height: 70,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Color(0xFFC1FDFF),
                      Color(0xFF98FCFF),
                      Color(0xFF71FAFF),
                      Color(0xFF48FCFF),
                      Color(0xFF33F8FF),
                      Color(0xFF28F8FC),
                    ],
                  ),
                  //border: Border.all(width: 2, color: Colors.red),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        '${index}',
                        style: const TextStyle(
                          fontSize: 45,
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
                      child: const CircleAvatar(
                        radius: 30,
                        child: Image(
                          image: AssetImage('images/icon/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '$name',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Fraunces',
                          color: Color(0xFFC238D3),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 75,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        //color: Colors.orange,
                        border: Border(
                          left: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      child: Text(
                        '$score',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Fraunces',
                          color: Color(0xFFFf0099),
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
    );
  }
}

class LinhVuc extends StatefulWidget {
  static String lv = 'Score';

  @override
  State<LinhVuc> createState() => _LinhVuc();

  Future<String> getLinhVuc() async {
    return lv;
  }
}

class _LinhVuc extends State<LinhVuc> {
  List<String> list = <String>[
    'Score',
    'Math',
    'World cup',
    'Geography',
    'Universe'
  ];
  String dropdownValue = "Score";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple, fontSize: 30),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          LinhVuc.lv = value;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
