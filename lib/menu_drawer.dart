import 'dart:ui';

import 'package:brain_hack/about.dart';
import 'package:brain_hack/bag.dart';
import 'package:brain_hack/dialog_exit.dart';
import 'package:brain_hack/list_friend.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/ranking.dart';
import 'package:brain_hack/shop.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget btnlogout = Container(
      padding: const EdgeInsets.all(50),
      decoration: const BoxDecoration(color: Colors.transparent),
      // ignore: prefer_const_constructors
      child: SizedBox(
        width: 50,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(255, 89, 0, 1),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2.5, color: Color(0xFF090050)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            showDialog(
              barrierColor: Colors.black26,
              context: context,
              builder: (context) {
                return const DialogExit();
              },
            );
          },
          child: const Text(
            'ĐĂNG XUẤT',
            style: TextStyle(
                fontSize: 25, fontFamily: 'Fraunces', color: Color(0xFF090050)),
          ),
        ),
      ),
    );

    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.1),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const CircleAvatar(
              radius: 45,
              child: Image(image: AssetImage('images/icon/avatar.png')),
            ),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(color: Colors.transparent),
            // ignore: prefer_const_constructors
            child: SizedBox(
              width: 60,
              height: 60,
              child: const Image(image: AssetImage('images/icon/menu.gif')),
            ),
          ),
          ListTile(
            title: const Button(
              title: "LỊCH SỬ",
              type: "history",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CÁ NHÂN",
              type: "profile",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "XẾP HẠNG",
              type: "ranking",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "TÚI ĐỒ",
              type: "bag",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "BẠN BÈ",
              type: "friends",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CỬA HÀNG",
              type: "shop",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CÀI ĐẶT",
              type: "settings",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "THÔNG TIN",
              type: "about",
            ),
            onTap: () {},
          ),
          btnlogout,
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final String type;
  const Button({Key? key, required this.title, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      onPressed: () {
        dynamic screen;
        switch (type) {
          case 'profile':
            screen = Profile();
            break;
          case 'ranking':
            screen = Ranking();
            break;
          case 'bag':
            screen = Bag();
            break;
          case 'friends':
            screen = ListFriend();
            break;
          case 'shop':
            screen = Shop();
            break;
          case 'settings':
            break;
          case 'about':
            screen = About();
            break;
        }
        Navigator.pop(context);
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => screen,
              transitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ));
      },
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/icon/head.png'), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFFC5658),
              fontSize: 27,
              shadows: [
                Shadow(
                    offset: Offset(2, 2),
                    color: Color.fromARGB(255, 0, 149, 199),
                    blurRadius: 2)
              ],
              fontFamily: 'Fraunces',
            ),
          ),
        ),
      ),
    );
  }
}
