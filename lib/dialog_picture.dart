import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogPicture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogPictureState();
}

class _DialogPictureState extends State<DialogPicture> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(top: 150, bottom: 150, left: 9, right: 9),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff3B4DA3).withOpacity(0.7),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 12),
              height: 520,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFFCBDEFF),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 23),
              height: 490,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35, bottom: 20),
                    height: 90,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffCBDEFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: const CircleAvatar(
                            radius: 40,
                            child: Image(
                              image: AssetImage('images/icon/logo.png'),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'AVATAR HIỆN TẠI',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFF3168D8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView(
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: const Image(
                            image: AssetImage('images/icon/logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xffCBDEFF),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'DUYỆT QUA',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFF3168D8),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff3168d8),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'CẬP NHẬT',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 5, top: 10),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff00A79D),
              ),
              child: const Text(
                'CẬP NHẬT AVATAR',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
