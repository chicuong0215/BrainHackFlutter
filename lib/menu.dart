import 'package:brain_hack/create_train.dart';
import 'package:brain_hack/dialog_challenge.dart';
import 'package:brain_hack/menu_drawer.dart';
import 'package:brain_hack/rooms.dart';
import 'package:brain_hack/trainning.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Menu();
  }
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Widget imgvLogo = const Image(
      image: AssetImage('images/icon/logo_v2.png'),
      fit: BoxFit.fitWidth,
      height: 240,
      width: 240,
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
        fontSize: 35,
        fontWeight: FontWeight.w700,
        fontFamily: 'Fraunces',
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 255, 0, 144),
      ),
    );
    return WillPopScope(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.red, size: 40),
            title: null,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: const Icon(Icons.kitchen),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => Rooms(),
                        transitionDuration: const Duration(milliseconds: 200),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ));
                },
              )
            ],
          ),
          drawer: MenuDrawer(),
          body: Container(
            padding: const EdgeInsets.all(55),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
            child: Center(
              child: Column(
                children: [
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
                      padding:
                          const EdgeInsets.only(top: 5, left: 20, right: 20),
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
                            onPressed: () {
                              showDialog(
                                barrierColor: Colors.black26,
                                context: context,
                                builder: (context) {
                                  return const DialogChallenge();
                                },
                              );
                            },
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
                        padding: const EdgeInsets.only(top: 90),
                        decoration: const BoxDecoration(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 0, 50, 91),
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
                      Container(
                        padding: const EdgeInsets.only(
                            top: 150, bottom: 0, left: 70, right: 70),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFC5658),
                            minimumSize: const Size(250, 60),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2.5,
                                  color: Color.fromARGB(255, 53, 53, 55)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => CreateTrain(),
                                  transitionDuration:
                                      const Duration(milliseconds: 200),
                                  transitionsBuilder: (_, a, __, c) =>
                                      FadeTransition(opacity: a, child: c),
                                ));
                          },
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
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          return true;
        });
  }
}
