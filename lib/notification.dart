import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Notifications();
  }
}

class _Notifications extends State<Notifications> {
  @override
  Widget title = Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/icon/head.png'), fit: BoxFit.contain),
    ),
    child: Row(
      children: [
        Container(
          child: IconButton(
            iconSize: 60,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: const Text(
            'THÔNG BÁO',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Fraunces',
              color: Color(0xFFFC5658),
              shadows: [
                Shadow(
                    blurRadius: 1.0,
                    color: Color(0xFF33f8ff),
                    offset: Offset(2.0, -1.0)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Column(
        children: [
          title,
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 70,
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Tài Khoản "    "  đã gởi kết bạn',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffC238D3),
                      fontFamily: 'Fraunces',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(50, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Đồng Ý'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
