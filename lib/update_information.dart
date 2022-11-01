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
    Widget txtEditMail = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
    Widget Title = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
            iconSize: 100,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Container(
                height: 35,
                child: const Text(
                  'CẬP NHẬT',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Fraunces',
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'THÔNG TIN',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Fraunces',
                    color: Colors.orange,
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
        Container(
          child: CircleAvatar(
            backgroundColor: Colors.green[800],
            radius: 100,
            child: const CircleAvatar(
              radius: 90,
              child: Image(
                image: AssetImage('images/icon/logo.png'),
              ),
            ),
          ),
        ),
        Container(
          height: 52,
          child: IconButton(
            iconSize: 50,
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
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
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Title,
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
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
                                    fontSize: 25, color: Colors.orange),
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
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              'EMAIL :',
                              style: GoogleFonts.bungee(
                                textStyle: const TextStyle(
                                    fontSize: 25, color: Colors.orange),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: txtEditMail,
                              padding: EdgeInsets.only(left: 30),
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
                                    fontSize: 25, color: Colors.orange),
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
                                    fontSize: 25, color: Colors.orange),
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
                              onPressed: () {},
                              child: const Text(
                                'TRỞ VỀ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
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
                              onPressed: () {},
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
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
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
          ),
        ),
      ),
    );
  }
}
