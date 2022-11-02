import 'package:flutter/material.dart';

class Trainning extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trainning();
  }
}

class _Trainning extends State<Trainning> {
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
      "LUYỆN TẬP",
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
    Widget tvCauHoi = const Text(
      "Câu 1",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Color.fromARGB(255, 255, 0, 0),
          shadows: [
            Shadow(
              offset: Offset(3, 3),
              blurRadius: 1,
              color: Color.fromARGB(255, 255, 251, 0),
            )
          ]),
    );
    Widget colScore = Column(
      children: [
        TextButton(
          child: Text(
            "NEXT",
            style: TextStyle(fontSize: 50),
          ),
          onPressed: () async {},
        )
      ],
    );

    Widget rowFooter = Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'images/icon/circle_2.gif',
                width: 90,
                height: 90,
              ),
              Row(
                children: [
                  const Text(
                    '30',
                    style: TextStyle(
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
          ),
          colScore
        ],
      ),
    );
    Widget tvResult = Container(
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
          child: const Text('A. This is a text. This is a text',
              style: TextStyle(color: Colors.white, fontSize: 18, shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 1,
                  color: Colors.blue,
                )
              ]))),
    );

    return Scaffold(
      body: Stack(
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
              Padding(padding: EdgeInsets.only(top: 50)),
              tvCauHoi,
              Padding(padding: EdgeInsets.only(top: 40)),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset('images/playing_bg.png'),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 45, left: 15),
                        width: 300,
                        height: 150,
                        child: const Text(
                          'TRƯỜNG CAO ĐẲNG KỸ THUẬT CAO THẮNG CÓ BAO NHIÊU BẠN NỮ',
                          style: TextStyle(
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [tvResult, tvResult],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [tvResult, tvResult],
                      )
                    ],
                  ),
                ],
              ),
              rowFooter,
            ],
          ),
        ],
      ),
    );
  }
}
