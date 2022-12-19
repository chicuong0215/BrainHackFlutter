import 'package:flutter/material.dart';

class DetailHistory extends StatelessWidget {
  int score;
  int numTrue;
  int numFalse;
  String name;
  String? gender;
  DetailHistory(
      {Key? key,
      required this.score,
      required this.numTrue,
      required this.numFalse,
      required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget txtEditName = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
    Widget txtEditMail = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
    Widget history = Container(
      margin: EdgeInsets.only(top: 10),
      width: 410,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 255, 170, 0),
          Color.fromARGB(255, 255, 255, 255)
        ]),
        //border: Border.all(width: 2, color: Colors.red),
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
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
            ],
          ),
          Container(
            child: const Text(
              'Tai khoan',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Fraunces',
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              '${score}',
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
          Padding(
            padding: EdgeInsets.only(left: 0),
          ),
        ],
      ),
    );

    Widget Title = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
            iconSize: 100,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Container(
                height: 35,
                child: const Text(
                  'CHI TIẾT',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Fraunces',
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    Widget EditAvatar = Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 93, 182, 255),
          radius: 100,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 222, 241, 255),
            radius: 95,
            child: Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                Container(
                  child: Title,
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: EditAvatar,
                ),
                Container(
                  child: const Text(
                    'Tổng Diểm',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Fraunces',
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    '5000 Điểm',
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Fraunces',
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
                history,
              ],
            )
          ],
        ),
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
