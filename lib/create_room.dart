import 'package:brain_hack/playing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateRoom();
  }
}

class _CreateRoom extends State<CreateRoom> {
  LinhVuc linhVuc = LinhVuc();
  CapDo capDo = CapDo();
  SoDiem soDiem = SoDiem();

  CollectionReference room = FirebaseFirestore.instance.collection('Room');

  Future<void> createRoom() {
    return room
        .add({
          'level': int.parse(capDo.getCapDo()),
          'score': int.parse(soDiem.getSoDiem()),
          'stt': true,
          'type': linhVuc.getLinhVuc()
        })
        .then((value) => print("Created Room"))
        .catchError((error) => print("Failed to add room: $error"));
  }

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
          // Navigator.push(
          //     context,
          //     PageRouteBuilder(
          //       pageBuilder: (_, __, ___) => WaitingRoom(),
          //       transitionDuration: const Duration(milliseconds: 200),
          //       transitionsBuilder: (_, a, __, c) =>
          //           FadeTransition(opacity: a, child: c),
          //     ));
          //createRoom();
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Playing(
                    linhVuc: linhVuc.getLinhVuc(),
                    time: 30,
                    level: int.parse(capDo.getCapDo()),
                    score: int.parse(soDiem.getSoDiem())),
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  TextCustom(title: "SỐ ĐIỂM"),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: soDiem,
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  TextCustom(title: "CẤP ĐỘ"),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    child: capDo,
                  ))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  TextCustom(title: "LĨNH VỰC"),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(10),
                    child: linhVuc,
                  )),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
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

// ignore: must_be_immutable
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
  const TextFieldCustom({super.key});

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

class LinhVuc extends StatefulWidget {
  static String lv = 'Math';
  const LinhVuc({super.key});

  @override
  State<LinhVuc> createState() => _LinhVuc();
  String getLinhVuc() {
    return lv;
  }
}

class _LinhVuc extends State<LinhVuc> {
  List<String> list = <String>['Math', 'World cup', 'Geography', 'Universe'];
  String dropdownValue = "Math";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple, fontSize: 30),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          LinhVuc.lv = value;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CapDo extends StatefulWidget {
  static String lv = '1';
  const CapDo({super.key});

  @override
  State<CapDo> createState() => _CapDo();
  String getCapDo() {
    return lv;
  }
}

class _CapDo extends State<CapDo> {
  List<String> list = <String>['1', '2', '3'];
  String dropdownValue = "1";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            CapDo.lv = value;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                value,
                style: TextStyle(fontSize: 26),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class SoDiem extends StatefulWidget {
  static String lv = '100';
  const SoDiem({super.key});

  @override
  State<SoDiem> createState() => _SoDiem();
  String getSoDiem() {
    return lv;
  }
}

class _SoDiem extends State<SoDiem> {
  List<String> list = <String>['100', '200', '300'];
  String dropdownValue = "100";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
            SoDiem.lv = value;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                value,
                style: TextStyle(fontSize: 26),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
