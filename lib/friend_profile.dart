import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class FriendProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  @override
  Widget build(BuildContext context) {
    Widget rowTitle = Row(
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
          margin: EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Container(
                height: 35,
                child: const Text(
                  'HỒ SƠ',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Fraunces',
                    color: Colors.orange,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'BẠN BÈ',
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
                padding: EdgeInsets.only(left: 5),
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
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 221, 221, 221)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'HỦY KẾT BẠN',
              style: GoogleFonts.bungee(
                textStyle: const TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
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
                      height: 350,
                      margin: EdgeInsets.only(top: 20, left: 25),
                      child: personalInformation,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(''),
        shape: CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
