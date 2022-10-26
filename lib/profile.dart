import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Widget rowTitle = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
            iconSize: 70,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: const Text(
            'HỒ SƠ',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Fraunces',
              color: Colors.orange,
            ),
          ),
        ),
      ],
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
                  radius: 85,
                  child: Image(
                    image: AssetImage('images/icon/logo.png'),
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
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'NVA@GMAIl',
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
            onPressed: () {},
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
          child: Text(
            'CHỈNH SỬA THÔNG TIN',
            style: GoogleFonts.bungee(
              textStyle: const TextStyle(fontSize: 18, color: Colors.white),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  child: rowTitle,
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
      ),
    );
  }
}
