import 'package:brain_hack/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Playing extends StatefulWidget {
  const Playing({super.key});

  @override
  State<StatefulWidget> createState() => _Playing();
}

class _Playing extends State<Playing> {
  dynamic listQuestion;
  int vt = 0;

  Future<void> loadQuestion() async {
    var a = FirebaseFirestore.instance.collection('Question');

    QuerySnapshot querySnapshot = await a.get();
    setState(() {});
    listQuestion = querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  void initState() {
    super.initState();
    loadQuestion();
  }

  @override
  Widget build(BuildContext context) {
    Widget rowTitle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 60,
          onPressed: () {},
          icon: const Image(
            image: AssetImage('images/icon/logo_v2.png'),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 50),
          child: const Text(
            'BRAINHACK',
            style: TextStyle(fontSize: 45, color: Color(0xFFFC5658), shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 1,
                color: Colors.white,
              )
            ]),
          ),
        )
      ],
    );
    Widget tvTitle = const Text(
      "MATCHING",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(3, 3),
              blurRadius: 1,
              color: Colors.red,
            )
          ]),
    );
    Widget btnDetail = TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => Result()));
        },
        child: Text('Xem chi tiết'));

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "images/bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                rowTitle,
                Room(id: 3000),
                tvTitle,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Person(id: "an"), Person(id: "dung")],
                ),
                if (listQuestion != null)
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset('images/playing_bg.png'),
                      Column(
                        children: [
                          QuestionTitle(text: listQuestion[vt]['title']),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              QuestionContent(text: listQuestion[vt]['a']),
                              QuestionContent(text: listQuestion[vt]['b'])
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              QuestionContent(text: listQuestion[vt]['c']),
                              QuestionContent(text: listQuestion[vt]['d'])
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (listQuestion != null &&
                              vt < listQuestion.length - 1) {
                            vt++;
                            setState(() {});
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Thông báo"),
                                  content: const Text('Kết thúc!'),
                                  actions: [btnDetail],
                                );
                              },
                            );
                          }
                        },
                        child: const Text(
                          "TIẾP THEO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ],
                ),
                if (listQuestion != null)
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TimeLeft(value: 25),
                        Score(value: listQuestion[vt]['score'])
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

// ignore: must_be_immutable
class QuestionTitle extends StatelessWidget {
  String text;
  QuestionTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, left: 15),
      width: 300,
      height: 150,
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
            fontSize: 21,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 1,
                color: Colors.blue,
              )
            ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class QuestionContent extends StatelessWidget {
  String text;
  QuestionContent({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(18)),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.blue.withOpacity(0.5),
          ),
          padding: const EdgeInsets.all(10),
          width: 150,
          height: 90,
          child: Text(text,
              style:
                  const TextStyle(color: Colors.white, fontSize: 18, shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 1,
                  color: Colors.blue,
                )
              ]))),
    );
  }
}

// ignore: must_be_immutable
class TimeLeft extends StatelessWidget {
  int value;
  TimeLeft({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'images/icon/circle_3.gif',
          width: 90,
          height: 90,
        ),
        Row(
          children: [
            Text(
              value.toString(),
              style:
                  const TextStyle(color: Colors.white, fontSize: 30, shadows: [
                Shadow(offset: Offset(2, 2), blurRadius: 1, color: Colors.blue)
              ]),
            ),
            const Text(
              'S',
              style: TextStyle(color: Colors.white, fontSize: 30, shadows: [
                Shadow(offset: Offset(2, 2), blurRadius: 1, color: Colors.red)
              ]),
            )
          ],
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class Person extends StatelessWidget {
  String id;
  Person({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // ignore: prefer_const_constructors
      Icon(
        Icons.person,
        color: Colors.white,
        size: 46,
      ),
      Text(
        id,
        style: const TextStyle(color: Colors.white),
      ),
      // ignore: prefer_const_constructors
      Text(
        '0',
        style: const TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 1,
                color: Colors.purple,
              )
            ]),
      )
    ]);
    ;
  }
}

// ignore: must_be_immutable
class Score extends StatelessWidget {
  int value;
  Score({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'ĐIỂM\nCÂU HỎI',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 21,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 1,
                  color: Colors.blue,
                )
              ]),
        ),
        Text(
          value.toString(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [
                Shadow(offset: Offset(2, 2), color: Colors.red, blurRadius: 1)
              ]),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class Room extends StatelessWidget {
  int id;
  Room({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      'ID Phòng: $id',
      style: TextStyle(fontSize: 18, color: Colors.red),
    );
  }
}
