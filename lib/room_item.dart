import 'package:brain_hack/utils.dart';
import 'package:brain_hack/waiting_room.dart';
import 'package:flutter/material.dart';

class RoomItem extends StatelessWidget {
  final String id;
  final String type;
  final bool stt;
  const RoomItem(
      {Key? key, required this.id, required this.type, required this.stt})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget tvType = Text(
      type,
      style: const TextStyle(
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
    Widget tvId = Text(
      "ID: $id",
      style: TextStyle(color: stt ? Colors.red : Colors.white),
    );
    Widget btnEnter = ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Color(stt ? 0x99FFFFFF : 0xFF94DD26))),
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
                stt ? imgGif : img,
                img,
                TextButton(
                    onPressed: () {
                      if (stt) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WaitingRoom(),
                            ));
                      } else {
                        Utils.notification(context, 'Phòng đầy');
                      }
                    },
                    child: Text(
                      stt ? "Đang thi\nđấu..." : "Trống",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ))
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
