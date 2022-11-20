import 'package:brain_hack/update_information.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      decoration: BoxDecoration(
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
              'HỒ SƠ',
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
    Widget personalStats = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Container(
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 179, 223, 255),
                  radius: 85,
                  child: Image(
                    image: AssetImage('images/icon/logo_v2.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  'ID: 1HWEDGYU2E',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 15, color: Colors.orange),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'CẤP ĐỘ :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
          margin: EdgeInsets.only(left: 20),
          height: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'ĐIỂM :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
                        'SỐ TRẬN :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
                        'THẮNG :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
                        'THUA :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
    );
    Widget personalInformation = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  'TÊN :',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'NGUYỄN VĂN A',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  child: Text(
                    'EMAIL :',
                    style: GoogleFonts.bungee(
                      textStyle:
                          const TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'NVA@GMAIL.COM',
                    style: GoogleFonts.bungee(
                      textStyle:
                          const TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  'GIỚI TÍNH :',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'NAM',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
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
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  '20/12/2002',
                  style: GoogleFonts.bungee(
                    textStyle:
                        const TextStyle(fontSize: 25, color: Colors.orange),
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
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'COIN :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '100',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'CGD :',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        '0',
                        style: GoogleFonts.bungee(
                          textStyle: const TextStyle(
                              fontSize: 25, color: Colors.orange),
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
    );
    Widget footer = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
            iconSize: 75,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const CircleAvatar(
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 230,
          decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.circular(30)),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => UpdateInformation(),
                    transitionDuration: const Duration(milliseconds: 200),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ));
            },
            child: const Text(
              'CHỈNH SỬA THÔNG TIN',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          child: IconButton(
            color: Colors.white,
            iconSize: 50,
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ),
      ],
    );
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              //title
              Container(
                child: title,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                child: Column(
                  children: [
                    //stats
                    Container(
                      child: personalStats,
                    ),
                    // Personal Information
                    Container(
                      height: 270,
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: personalInformation,
                    ),
                  ],
                ),
              ),
              //footer
              Container(
                child: footer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
