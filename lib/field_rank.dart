import 'package:flutter/material.dart';

class FieldRank extends StatelessWidget {
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
            margin: EdgeInsets.only(left: 15),
            child: const Text(
              'HẠNG LĨNH VỰC',
              style: TextStyle(
                fontSize: 30,
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
    Widget ranking = Container(
      margin: EdgeInsets.only(top: 10),
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
            child: const Text(
              'NGUYỄN VĂN A',
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
            child: const Text(
              '500',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Fraunces',
                color: Color(0xFFFf0099),
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: title,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(),
                    Container(
                      child: Text(
                        'SCIENCE',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Fraunces',
                          color: Color(0xFFC238D3),
                          shadows: [
                            Shadow(
                              blurRadius: 1.0,
                              color: Color(0xFFFf0099),
                              offset: Offset(-1.0, -1.0),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  itemCount: 20,
                  itemBuilder: (context, index) => ranking,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20),
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'HẠNG CỦA BẠN : 97  400',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffC238D3),
                  fontFamily: 'Fraunces',
                ),
                textAlign: TextAlign.center,
              ),
            ),
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
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
