import 'package:brain_hack/trainning.dart';
import 'package:brain_hack/utils.dart';
import 'package:flutter/material.dart';

class CreateTrain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateTrain();
  }
}

class _CreateTrain extends State<CreateTrain> {
  TextEditingController CapDoController = TextEditingController();
  TextEditingController LinhVucController = TextEditingController();

  LinhVuc linhVuc = new LinhVuc();
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
          if (CapDoController.text.isEmpty) {
            Utils.notification(context, 'Nhập đầy đủ thông tin!');
          } else {
            if (int.parse(CapDoController.text.toString()) > 0 &&
                int.parse(CapDoController.text.toString()) < 4) {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Training(
                      linhVuc: linhVuc.getLinhVuc(),
                      level: int.parse(CapDoController.text.toString()),
                      time: 30,
                    ),
                    transitionDuration: const Duration(milliseconds: 200),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ));
            } else {
              Utils.notification(context, 'Lỗi');
            }
          }
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
            Padding(padding: EdgeInsets.all(20)),
            tvCreateRoom,
            Padding(padding: EdgeInsets.all(30)),
            Row(
              children: [
                TextCustom(title: "CẤP ĐỘ"),
                Padding(padding: EdgeInsets.only(right: 30)),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: CapDoController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              children: [
                TextCustom(title: "LĨNH VỰC"),
                Padding(padding: EdgeInsets.only(right: 30)),
                Expanded(
                    child: Container(
                  child: linhVuc,
                )),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 60)),
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
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 1,
                color: Colors.blue,
              )
            ]),
      ),
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
            LinhVuc.lv = value;
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
