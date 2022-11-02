import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendItem extends StatefulWidget {
  const FriendItem({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FriendItem();
  }
}

class _FriendItem extends State<FriendItem> {
  @override
  Widget imgvLogo = const Image(
    image: AssetImage('images/icon/logo_v2.png'),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)),
        child: Row(
          children: [
            Container(
              child: imgvLogo,
              width: 80,
              height: 80,
            ),
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Nguyễn Hoàng Giang',
                  style: GoogleFonts.bungee(
                    textStyle: const TextStyle(
                        fontSize: 16.5,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 3),
                            blurRadius: 1,
                            color: Color.fromARGB(255, 113, 113, 113),
                          )
                        ],
                        color: Color.fromARGB(255, 17, 0, 255)),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(left: 30),
              width: 50,
              height: 50,
              child: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
