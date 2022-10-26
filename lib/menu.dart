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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Center(
              child: Column(children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: imgvLogo,
            ),
            Container(
              decoration: BoxDecoration(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: 300,
                height: 170,
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Column(children: [
                  tvGhepTran,
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 89, 0),
                        minimumSize: Size(200, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'GHÉP',
                        style: TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              child: Container(
                padding: const EdgeInsets.only(top: 90),
                decoration: BoxDecoration(),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 0, 17, 32),
                    ),
                    width: 400,
                    height: 90,
                    padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
                    child: Column(
                      children: [
                        tvLuyenTap,
                      ],
                    )),
              ),
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
          ])),
        ),
      ),
    );
  }
}