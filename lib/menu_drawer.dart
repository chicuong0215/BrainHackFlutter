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
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CÁ NHÂN",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "XẾP HẠNG",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "TÚI ĐỒ",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "BẠN BÈ",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CỬA HÀNG",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "CÀI ĐẶT",
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Button(
              title: "THÔNG TIN",
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  const Button({Key? key, required this.title}) : super(key: key);

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
      onPressed: () {},
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
