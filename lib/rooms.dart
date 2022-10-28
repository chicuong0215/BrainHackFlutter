import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Rooms extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Rooms();
}

class _Rooms extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    Widget rowTitle = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 90,
          onPressed: () {},
          icon: const Image(
            image: AssetImage('images/icon/logo_v2.png'),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: const Text(
            'PHÒNG ĐẤU',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Fraunces',
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );
    Widget edtSearch = TextField(
      cursorColor: Colors.blue,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFCBDEFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
    Widget searchRow = ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.2)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 2),
          ))),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(9),
        child: const Text(
          "Phòng",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              //title
              Container(
                child: rowTitle,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [searchRow, edtSearch],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
