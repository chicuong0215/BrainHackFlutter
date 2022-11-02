import 'package:brain_hack/playing.dart';
import 'package:flutter/material.dart';

class WaitingRoom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WaitingRoom();
  }
}

class _WaitingRoom extends State<WaitingRoom> {
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
      "",
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
          'A',
          style: TextStyle(color: Colors.white),
        ),
        // ignore: prefer_const_constructors
        Text(
          'Sẵn Sàng',
          style: const TextStyle(
              fontSize: 15,
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
    Widget btnStart = Column(
      children: [
        TextButton(
          child: Text(
            "BẮT ĐẦU",
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => Playing(),
                  transitionDuration: const Duration(milliseconds: 500),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ));
          },
        )
      ],
    );
    Widget rowFooter = Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'images/icon/circle_2.gif',
                width: 90,
                height: 90,
              ),
              Container(
                child: btnStart,
              ),
            ],
          ),
        ],
      ),
    );
    Widget tvResult = Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(18)),
    );
    Widget txtChat = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
      obscureText: true,
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
                alignment: Alignment.center,
                children: [
                  Image.asset('images/playing_bg.png'),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'CHAT',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 1,
                                  color: Colors.blue,
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 250,
                              height: 40,
                              child: txtChat,
                            ),
                          ],
                        )
                      ],
                    ),
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
