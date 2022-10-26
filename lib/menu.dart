import 'package:brain_hack/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: const Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: MenuDrawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                btnAvatarRoom,
                imgvLogo,
                Container(
                  decoration: const BoxDecoration(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Color.fromARGB(255, 255, 185, 208)
                      ]),
                    ),
                    width: 300,
                    height: 170,
                    padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: Column(children: [
                      tvGhepTran,
                      Container(
                        padding: const EdgeInsets.only(top: 40),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 89, 0),
                            minimumSize: const Size(200, 60),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2.5, color: Color(0xFF090050)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'BẮT ĐẦU',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Fraunces',
                                color: Color(0xFF090050)),
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
                        decoration: const BoxDecoration(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 0, 50, 91),
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
                      padding: const EdgeInsets.only(
                          top: 150, bottom: 0, left: 100, right: 100),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFC5658),
                          minimumSize: const Size(200, 60),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 2.5, color: Color(0xFF090050)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'PLAY',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Fraunces',
                              color: Color(0xFF090050)),
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
