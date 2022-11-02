import 'package:brain_hack/playing.dart';
import 'package:brain_hack/trainning.dart';
import 'package:brain_hack/waiting_room.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateRoom();
  }
}

class _CreateRoom extends State<CreateRoom> {
  @override
  Widget build(BuildContext context) {
    Widget rowTitle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 60,
          onPressed: () {},
          icon: const Image(
            image: AssetImage('images/icon/logo_v2.png'),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(right: 50),
          child: const Text(
            'BRAINHACK',
            style: TextStyle(fontSize: 45, color: Color(0xFFFC5658), shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 1,
                color: Colors.white,
              )
            ]),
          ),
        )
      ],
    );
    Widget tvCreateRoom = const Text(
      "TẠO\nPHÒNG",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 60,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(3, 3),
              blurRadius: 1,
              color: Colors.red,
            )
          ]),
    );
    Widget btnCreate = ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent)),
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'images/icon/create.gif',
              width: 112,
              height: 112,
            ),
            const Text(
              'TẠO',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(3, 3),
                      blurRadius: 1,
                      color: Colors.blue,
                    )
                  ]),
            ),
          ],
        ));
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: SingleChildScrollView(
        child: Column(
          children: [
            rowTitle,
            tvCreateRoom,
            SizedBox(
              child: Row(
                children: [
                  TextCustom(title: "SỐ ĐIỂM"),
                  Expanded(
                    child: TextFieldCustom(),
                  )
                ],
              ),
            ),
            Row(
              children: [
                TextCustom(title: "HẠNG"),
                Expanded(
                  child: TextFieldCustom(),
                ),
                TextCustom(title: "ĐẾN"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                TextCustom(title: "CẤP ĐỘ"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                TextCustom(title: "SỐ NGƯỜI"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                TextCustom(title: "THỜI GIAN"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                TextCustom(title: "SỐ CÂU HỎI"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                TextCustom(title: "LĨNH VỰC"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            btnCreate
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(''),
        shape: const CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: const Color(0xFF3B4DA3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class TextCustom extends StatelessWidget {
  String title = '';

  TextCustom({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45,
          color: Colors.white,
          shadows: [
            Shadow(
              offset: Offset(3, 3),
              blurRadius: 1,
              color: Colors.blue,
            )
          ]),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 15),
      child: TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          )),
    );
  }
}
