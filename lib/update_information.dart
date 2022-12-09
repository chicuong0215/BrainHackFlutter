import 'package:brain_hack/dialog_picture.dart';
import 'package:brain_hack/input_new_password.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class UpdateInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UpdateInformationState();
}

class _UpdateInformationState extends State<UpdateInformation> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    Widget txtEditName = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

    Widget Title = Column(
      children: [
        //title
        Container(
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
                margin: EdgeInsets.only(left: 70),
                child: const Text(
                  '  CẬP NHẬT\nTHÔNG TIN',
                  style: TextStyle(
                    fontSize: 25,
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
        ),
      ],
    );
    Widget EditAvatar = Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 93, 182, 255),
          radius: 100,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 222, 241, 255),
            radius: 95,
            child: Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
        SizedBox(
          height: 52,
          child: IconButton(
            iconSize: 50,
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => DialogPicture());
            },
            icon: const Icon(
              Icons.photo_camera,
              color: Color.fromARGB(255, 93, 182, 255),
            ),
          ),
        ),
      ],
    );
    Widget rbtnMale = Radio(
      fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
      value: 'male',
      groupValue: gender,
      onChanged: ((value) {
        gender = value.toString();
      }),
    );
    Widget rbtnFemale = Radio(
      fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
      value: 'female',
      groupValue: gender,
      onChanged: ((value) {
        gender = value.toString();
      }),
    );
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/bg.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Container(
              child: Title,
            ),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              child: EditAvatar,
            ),
            Container(
              height: 380,
              margin: EdgeInsets.only(top: 15, left: 50, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'TÊN :',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                  fontSize: 21, color: Colors.orange),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            child: txtEditName,
                            padding: EdgeInsets.only(left: 60),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'GIỚI TÍNH :',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                  fontSize: 21, color: Colors.orange),
                            ),
                          ),
                        ),
                        Container(
                          child: rbtnMale,
                        ),
                        Container(
                          child: Text(
                            'NAM',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                  fontSize: 20, color: Colors.orange),
                            ),
                          ),
                        ),
                        Container(
                          child: rbtnFemale,
                        ),
                        Container(
                          child: Text(
                            'NỮ',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                  fontSize: 20, color: Colors.orange),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'NGÀY SINH :',
                            style: GoogleFonts.bungee(
                              textStyle: const TextStyle(
                                  fontSize: 21, color: Colors.orange),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: IconButton(
                            color: Colors.green,
                            iconSize: 50,
                            onPressed: () {},
                            icon: Icon(Icons.calendar_month_sharp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'TRỞ VỀ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        const InputNewPassword(),
                                    transitionDuration:
                                        const Duration(milliseconds: 500),
                                    transitionsBuilder: (_, a, __, c) =>
                                        FadeTransition(opacity: a, child: c),
                                  ));
                            },
                            child: Column(
                              children: const [
                                Text(
                                  'ĐỔI MẬT',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Text(
                                  'KHẨU',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding: EdgeInsets.all(20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'LƯU',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    )));
  }
}
