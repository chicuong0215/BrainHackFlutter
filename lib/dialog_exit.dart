import 'package:brain_hack/login.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogExit extends StatefulWidget {
  const DialogExit({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DialogExit();
  }
}

class _DialogExit extends State<DialogExit> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget tvTitle = Align(
      alignment: Alignment.center,
      child: Container(
        child: const Text(
          "Bạn Có Muốn ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Fraunces',
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
    Widget tvOut = Align(
      alignment: Alignment.center,
      child: Container(
        child: const Text(
          "Đăng Xuất ",
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Fraunces',
              color: Color.fromARGB(255, 255, 0, 0),
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    Widget btnNo = Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          minimumSize: const Size(150, 60),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 2.5, color: Color.fromARGB(255, 255, 255, 255)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'KHÔNG',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Fraunces',
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
    Widget btnYes = Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFC5658),
          minimumSize: const Size(150, 60),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 2.5, color: Color(0xFF090050)),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Login(),
                transitionDuration: const Duration(milliseconds: 200),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ));
        },
        child: const Text(
          'CÓ',
          style: TextStyle(
              fontSize: 18, fontFamily: 'Fraunces', color: Color(0xFF090050)),
        ),
      ),
    );
    return Dialog(
      insetPadding:
          const EdgeInsets.only(top: 250, bottom: 250, left: 20, right: 20),
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
              padding: EdgeInsets.only(top: 20),
              child: tvTitle,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              child: tvOut,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: btnNo,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: btnYes,
                )
              ],
            ),
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
