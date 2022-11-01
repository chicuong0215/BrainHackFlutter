import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends StatelessWidget {
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
            margin: EdgeInsets.only(left: 70),
            child: const Text(
              'SHOP',
              style: TextStyle(
                fontSize: 50,
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
    Widget unitCoin = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text.rich(
            TextSpan(
              text: 'COIN : ',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFC5658),
                  shadows: [
                    Shadow(
                        blurRadius: 1.0,
                        color: Colors.white,
                        offset: Offset(-2.0, 2.0)),
                  ],
                ),
              ),
              children: [
                TextSpan(
                  text: '100',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFC5658),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '+',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    Widget unitCGD = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text.rich(
            TextSpan(
              text: 'CGD : ',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFC5658),
                  shadows: [
                    Shadow(
                        blurRadius: 1.0,
                        color: Colors.white,
                        offset: Offset(-2.0, 2.0)),
                  ],
                ),
              ),
              children: [
                TextSpan(
                  text: '100',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFC5658),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '+',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    Widget itemOne = Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF79ffa0),
              width: 5,
            ),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  '50/50',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Color(0xFFFCD24F),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Text(
                        'XEM CHI TIẾT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFCBDEFF),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0xFFC1FDFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFF3B4DA3),
                          width: 2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text.rich(
                  TextSpan(
                    text: 'SỞ HỮU : ',
                    style: GoogleFonts.bungee(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF94DD26),
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Color(0xFF79FFA0),
                          ),
                        ],
                      ),
                    ),
                    children: [
                      TextSpan(
                        text: '2',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF94DD26),
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Color(0xFF79FFA0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              primary: Color(0xFF94DD26),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '20 CDG',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    Widget itemTwo = Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF79ffa0),
              width: 5,
            ),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image(image: AssetImage('images/icon/circle.gif')),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Text(
                        'XEM CHI TIẾT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFCBDEFF),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0xFFC1FDFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFF3B4DA3),
                          width: 2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'ĐÃ SỞ HỮU ',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF94DD26),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Color(0xFF79FFA0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              primary: Color(0xFFFF001b),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '20 CDG',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    Widget itemThree = Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF79ffa0),
              width: 5,
            ),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('images/icon/item_1.png'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Text(
                        'XEM CHI TIẾT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFCBDEFF),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0xFFC1FDFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFF3B4DA3),
                          width: 2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'CHƯA SỞ HỮU ',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFF001b),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Color(0xFFFC5658),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              primary: Color(0xFF94DD26),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '20 CDG',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    Widget itemFour = Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF79ffa0),
              width: 5,
            ),
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('images/icon/item_2.png'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Text(
                        'XEM CHI TIẾT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFCBDEFF),
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Color(0xFFC1FDFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFF3B4DA3),
                          width: 2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'CHƯA SỞ HỮU ',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFF001b),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Color(0xFFFC5658),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              primary: Color(0xFF94DD26),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            onPressed: () {},
            child: const Text(
              '20 CDG',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Container(
        child: Column(
          children: [
            // title
            Container(
              child: title,
            ),
            // Coin
            Container(
              margin: EdgeInsets.only(left: 100, right: 60),
              child: unitCoin,
            ),
            //CGD
            Container(
              margin: EdgeInsets.only(left: 100, right: 60),
              child: unitCGD,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: itemOne,
                  ),
                  Container(
                    child: itemTwo,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: itemThree,
                  ),
                  Container(
                    child: itemFour,
                  ),
                ],
              ),
            ),
            Container(
              //color: Colors.red,
              margin: EdgeInsets.only(top: 30),
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                ],
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
        shape: const CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.blueGrey.withOpacity(0.5),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
