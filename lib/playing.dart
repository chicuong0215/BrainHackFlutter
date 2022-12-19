import 'package:brain_hack/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class Playing extends StatefulWidget {
  String type;
  int level;
  int score;
  static int scoreEarn = 0;
  Playing(
      {Key? key, required this.type, required this.level, required this.score})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      _Playing(score: score, level: level, type: type, scoreEarn: scoreEarn);
}

class _Playing extends State<Playing> {
  dynamic listQuestion;
  int vt = 0;

  int numTrue = 0;
  int numFalse = 0;
  int level;
  int score;
  int scoreEarn;
  String type;

  bool isShow = true;

  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
  late CountdownTimerController controller;

  _Playing(
      {required this.level,
      required this.score,
      required this.type,
      required this.scoreEarn});

  Future<void> loadQuestion() async {
    setState(() {});
    var a = FirebaseFirestore.instance.collection(type);
    QuerySnapshot querySnapshot = await a.get();
    listQuestion = querySnapshot.docs.map((doc) => doc.data()).toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadQuestion();
    controller = CountdownTimerController(
        endTime: endTime,
        onEnd: () {
          if (isShow) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return WillPopScope(
                    child: AlertDialog(
                      title: const Text("Thông báo"),
                      content: const Text('Kết thúc!'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => Result(
                                            level: level,
                                            numTrue: numTrue,
                                            time: 30,
                                            score: 30,
                                            scoreEarn: 30,
                                            type: type,
                                          )));
                            },
                            child: Text('Xem chi tiết'))
                      ],
                    ),
                    onWillPop: () async => false);
              },
            );
          }
        });
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
              context,
              MaterialPageRoute(
                  builder: (builder) => Result(
                        level: level,
                        type: type,
                        score: score,
                        numTrue: numTrue,
                        scoreEarn: scoreEarn,
                        time: 20,
                      )));
        },
        child: Text('Xem chi tiết'));

    return Scaffold(
        body: WillPopScope(
            child: SingleChildScrollView(
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
                        tvTitle,
                        Text(
                          'Lĩnh vực: $type',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Cấp độ: $level',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'Số điểm: $score',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        if (listQuestion != null)
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Image.asset('images/playing_bg.png'),
                              Column(
                                children: [
                                  QuestionTitle(
                                      text: listQuestion[vt]['title']),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            if (listQuestion[vt]['a'] ==
                                                listQuestion[vt]['result']) {
                                              numTrue++;
                                              scoreEarn += score ~/ 10;
                                            } else {
                                              numFalse++;
                                            }
                                            if (listQuestion != null &&
                                                vt < listQuestion.length - 1) {
                                              vt++;
                                              setState(() {});
                                            } else {
                                              isShow = false;
                                              showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return WillPopScope(
                                                      child: AlertDialog(
                                                        title: const Text(
                                                            "Thông báo"),
                                                        content: const Text(
                                                            'Kết thúc!'),
                                                        actions: [btnDetail],
                                                      ),
                                                      onWillPop: () async =>
                                                          false);
                                                },
                                              );
                                            }
                                          },
                                          child: QuestionContent(
                                              text: listQuestion[vt]['a'])),
                                      TextButton(
                                          onPressed: () {
                                            if (listQuestion[vt]['b'] ==
                                                listQuestion[vt]['result']) {
                                              numTrue++;
                                              scoreEarn += score ~/ 10;
                                            } else {
                                              numFalse++;
                                            }
                                            if (listQuestion != null &&
                                                vt < listQuestion.length - 1) {
                                              vt++;
                                              setState(() {});
                                            } else {
                                              isShow = false;
                                              showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return WillPopScope(
                                                      child: AlertDialog(
                                                        title: const Text(
                                                            "Thông báo"),
                                                        content: const Text(
                                                            'Kết thúc!'),
                                                        actions: [btnDetail],
                                                      ),
                                                      onWillPop: () async =>
                                                          false);
                                                },
                                              );
                                            }
                                          },
                                          child: QuestionContent(
                                              text: listQuestion[vt]['b'])),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            if (listQuestion[vt]['c'] ==
                                                listQuestion[vt]['result']) {
                                              numTrue++;
                                              scoreEarn += score ~/ 10;
                                            } else {
                                              numFalse++;
                                            }
                                            if (listQuestion != null &&
                                                vt < listQuestion.length - 1) {
                                              vt++;
                                              setState(() {});
                                            } else {
                                              isShow = false;
                                              showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return WillPopScope(
                                                      child: AlertDialog(
                                                        title: const Text(
                                                            "Thông báo"),
                                                        content: const Text(
                                                            'Kết thúc!'),
                                                        actions: [btnDetail],
                                                      ),
                                                      onWillPop: () async =>
                                                          false);
                                                },
                                              );
                                            }
                                          },
                                          child: QuestionContent(
                                              text: listQuestion[vt]['c'])),
                                      TextButton(
                                          onPressed: () {
                                            if (listQuestion[vt]['d'] ==
                                                listQuestion[vt]['result']) {
                                              numTrue++;
                                              scoreEarn += score ~/ 10;
                                            } else {
                                              numFalse++;
                                            }
                                            if (listQuestion != null &&
                                                vt < listQuestion.length - 1) {
                                              vt++;
                                              setState(() {});
                                            } else {
                                              isShow = false;
                                              showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return WillPopScope(
                                                      child: AlertDialog(
                                                        title: const Text(
                                                            "Thông báo"),
                                                        content: const Text(
                                                            'Kết thúc!'),
                                                        actions: [btnDetail],
                                                      ),
                                                      onWillPop: () async =>
                                                          false);
                                                },
                                              );
                                            }
                                          },
                                          child: QuestionContent(
                                              text: listQuestion[vt]['d'])),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        if (listQuestion != null)
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CountdownTimer(
                                  controller: controller,
                                  endTime: endTime,
                                  widgetBuilder: (context, time) {
                                    if (time == null) {
                                      return TimeLeft(value: 'Hết Giờ');
                                    }
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
                                              time.sec.toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset(2, 2),
                                                        blurRadius: 1,
                                                        color: Colors.blue)
                                                  ]),
                                            ),
                                            const Text(
                                              'S',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  shadows: [
                                                    Shadow(
                                                        offset: Offset(2, 2),
                                                        blurRadius: 1,
                                                        color: Colors.red)
                                                  ]),
                                            )
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                ),
                                Score(value: numTrue, text: 'SỐ CÂU ĐÚNG'),
                                Score(
                                  value: numFalse,
                                  text: 'SỐ CÂU SAI',
                                )
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            onWillPop: () async => false));
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
class TimeLeft extends StatefulWidget {
  String value;
  TimeLeft({Key? key, required this.value}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _TimeLeft(value: value);
  }
}

class _TimeLeft extends State<TimeLeft> {
  String value;
  _TimeLeft({Key? key, required this.value});
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
class Score extends StatelessWidget {
  int value;
  String text;
  Score({Key? key, required this.value, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
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
