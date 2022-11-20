import 'package:brain_hack/detail_history.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
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
    Widget history = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 410,
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
            Container(
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                '1',
                style: TextStyle(
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
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 65,
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
                'VS',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Fraunces',
                  color: Color(0xFFFf0099),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
            ),
            img,
            img,
            img,
            Container(
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return DetailHistory();
                      },
                    );
                  },
                  icon: Icon(Icons.more_horiz_rounded)),
            )
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Container(
        child: Column(
          children: [
            Container(
              child: title,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 20,
                itemBuilder: (context, index) => history,
              ),
            ),
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
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
