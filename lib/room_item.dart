import 'package:flutter/material.dart';

class RoomItem extends StatefulWidget {
  const RoomItem({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RoomItem();
  }
}

class _RoomItem extends State<RoomItem> {
  @override
  Widget build(BuildContext context) {
    Widget tvType = const Text(
      "KHOA HỌC",
      style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          shadows: [
            Shadow(
              offset: Offset(1, 1),
              blurRadius: 1,
              color: Colors.white,
            )
          ]),
    );
    Widget img = Image.asset(
      "images/icon/circle.png",
      width: 100,
      height: 100,
    );
    Widget imgGif = Image.asset(
      "images/icon/circle.gif",
      width: 100,
      height: 100,
    );
    Widget tvId = const Text(
      "ID:000000",
      style: TextStyle(color: Colors.red),
    );
    Widget btnEnter = ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(const Color(0xFF94DD26))),
        onPressed: () {},
        child: const Text(
          "Vào",
        ));

    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tvType,
            Stack(
              alignment: Alignment.center,
              children: [
                imgGif,
                img,
                const Text(
                  "Đang thi\nđấu...",
                  style: TextStyle(color: Colors.white, fontSize: 9),
                )
              ],
            ),
            tvId,
            btnEnter
          ],
        ),
      ),
    );
  }
}
