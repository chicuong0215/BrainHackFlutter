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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Container(
        padding: EdgeInsets.all(3),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              Container(
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
              const SizedBox(
                width: 50,
                height: 50,
                child: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
