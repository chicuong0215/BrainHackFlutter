import 'package:brain_hack/playing.dart';
import 'package:brain_hack/trainning.dart';
import 'package:flutter/material.dart';

class CreateTrain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateTrain();
  }
}

class _CreateTrain extends State<CreateTrain> {
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
      "TẠO\nĐẤU LUYỆN",
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
                pageBuilder: (_, __, ___) => Trainning(),
                transitionDuration: const Duration(milliseconds: 200),
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
            Padding(padding: EdgeInsets.all(50)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                TextCustom(title: "CẤP ĐỘ"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                TextCustom(title: "THỜI GIAN"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                TextCustom(title: "SỐ CÂU HỎI"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(bottom: 50)),
                TextCustom(title: "LĨNH VỰC"),
                Expanded(
                  child: TextFieldCustom(),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 100)),
            btnCreate
          ],
        ),
      ),
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
          fontSize: 40,
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
