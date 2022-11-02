import 'package:flutter/material.dart';

class Playing extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Playing();
  }
}

class _Playing extends State<Playing> {
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
    Widget tvId = const Text(
      'ID Phòng: 000006',
      style: TextStyle(fontSize: 18, color: Colors.red),
    );
    Widget tvTitle = const Text(
      "TRIPLE MATCH",
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
    Widget person = Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Icon(
          Icons.person,
          color: Colors.white,
          size: 46,
        ),
        const Text(
          'an',
          style: TextStyle(color: Colors.white),
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
      ],
    );
    Widget colScore = Column(
      children: [
        Text(
          'ĐIỂM\nCÂU HỎI',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontSize: 21,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 1,
                  color: Colors.blue,
                )
              ]),
        ),
        Text(
          '1000',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: [
                Shadow(offset: Offset(2, 2), color: Colors.red, blurRadius: 1)
              ]),
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
              tvId,
              tvTitle,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [person, person, person],
              ),
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
                          'CÂU 1: TRƯỜNG CAO ĐẲNG KỸ THUẬT CAO THẮNG CÓ BAO NHIÊU BẠN NỮ',
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(''),
        shape: CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
