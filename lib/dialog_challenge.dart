import 'package:brain_hack/create_room.dart';
import 'package:brain_hack/waiting_room.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogChallenge extends StatefulWidget {
  const DialogChallenge({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DialogChallenge();
  }
}

class _DialogChallenge extends State<DialogChallenge> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget btnRandom = Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          minimumSize: const Size(180, 60),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 2.5, color: Color.fromARGB(255, 255, 255, 255)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => WaitingRoom(),
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ));
        },
        child: const Text(
          'Ngẫu Nhiên',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Fraunces',
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
    Widget btnCreateRoom = Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFC5658),
          minimumSize: const Size(180, 60),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2.5, color: Color(0xFF090050)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateRoom(),
            ),
          );
        },
        child: const Text(
          'Tạo Phòng',
          style: TextStyle(
              fontSize: 20, fontFamily: 'Fraunces', color: Color(0xFF090050)),
        ),
      ),
    );
    return Dialog(
      insetPadding:
          const EdgeInsets.only(top: 260, bottom: 260, left: 40, right: 40),
      // ignore: sort_child_properties_last
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                colors: [Colors.white, Color.fromARGB(255, 255, 185, 208)]),
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, top: 20),
              child: btnRandom,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20, top: 20),
              child: btnCreateRoom,
            )
          ],
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
