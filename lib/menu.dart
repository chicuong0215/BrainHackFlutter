import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget imgvLogo = const Image(
    image: AssetImage('images/icon/logo_v2.png'),
    fit: BoxFit.fitWidth,
    height: 230,
    width: 230,
  );
  Widget tvLogin = const Text(
    'ĐĂNG NHẬP',
    style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      fontFamily: 'Fraunces',
      fontStyle: FontStyle.italic,
      color: Colors.orange,
    ),
  );
  Widget tvLuyenTap = const Text(
    'Luyện Tập',
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: 'Fraunces',
      fontStyle: FontStyle.italic,
      color: Color.fromARGB(255, 0, 255, 34),
    ),
  );
  Widget tvGhepTran = const Text(
    'THÁCH ĐẤU',
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: 'Fraunces',
      fontStyle: FontStyle.italic,
      color: Color.fromARGB(255, 255, 0, 144),
    ),
  );
  Widget btnAvatarRoom = Container(
    child: Row(
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 325, left: 0),
        ),
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: btnAvatarRoom,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  child: imgvLogo,
                ),
                Container(
                  padding: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 178, 231)
                        ])),
                    width: 300,
                    height: 170,
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(children: [
                      tvGhepTran,
                      Container(
                        padding: EdgeInsets.only(top: 30, bottom: 5),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 89, 0),
                            minimumSize: Size(200, 60),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2.5,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'GHÉP',
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      child: Container(
                        padding: const EdgeInsets.only(top: 90),
                        decoration: BoxDecoration(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 0, 32, 59),
                          ),
                          width: 400,
                          height: 90,
                          padding: const EdgeInsets.only(
                              top: 0, left: 50, right: 50),
                          child: Column(
                            children: [
                              tvLuyenTap,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 150, bottom: 0, left: 100, right: 100),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color.fromARGB(255, 66, 15, 15),
                          backgroundColor: Color.fromARGB(255, 255, 25, 0),
                          minimumSize: Size(200, 60),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'PLAY',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Fraunces',
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'CGD@Copyright',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
