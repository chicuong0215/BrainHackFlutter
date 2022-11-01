import 'dart:ui';

import 'package:brain_hack/bag.dart';
import 'package:brain_hack/dialog_exit.dart';
import 'package:brain_hack/login.dart';
import 'package:brain_hack/profile.dart';
import 'package:brain_hack/shop.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.4),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: const Icon(
              Icons.person,
              size: 60,
              color: Colors.orange,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(color: Colors.orange),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'MENU',
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Color.fromARGB(255, 255, 173, 51),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
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
          TextButton(
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
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ))
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
        backgroundColor: Colors.blue.withOpacity(0.3),
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
            break;
          case 'bag':
            screen = Bag();
            break;
          case 'friends':
            break;
          case 'shop':
            screen = Shop();
            break;
          case 'settings':
            break;
          case 'about':
            break;
        }
        Navigator.pop(context);
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => screen,
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ));
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 21,
          color: Colors.orange,
          fontFamily: 'Fraunces',
        ),
      ),
    );
  }
}
