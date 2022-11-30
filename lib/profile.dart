import 'package:brain_hack/update_information.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _user = FirebaseAuth.instance.currentUser;
  final CollectionReference _fireStore =
      FirebaseFirestore.instance.collection('Account');
  String formatTimestamp(Timestamp timestamp) {
    var format = new DateFormat('dd/MM/y');
    return format.format(timestamp.toDate());
  }

  bool gender = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover),
          ),
          child: StreamBuilder(
            stream: _fireStore.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: snapshot.data!.docs.map((dynamic e) {
                    return Column(
                      children: [
                        //title
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/icon/head.png'),
                                fit: BoxFit.contain),
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: IconButton(
                                  iconSize: 60,
                                  onPressed: () {},
                                  icon: const Image(
                                    image:
                                        AssetImage('images/icon/logo_v2.png'),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 10),
                          child: Column(
                            children: [
                              //stats

                              Container(
                                child: const CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 179, 223, 255),
                                  radius: 85,
                                  // child: Image(
                                  //   image: NetworkImage(
                                  //     '',
                                  //   ),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  'ID: ${e['Id']}',
                                  style: GoogleFonts.bungee(
                                    textStyle: const TextStyle(
                                        fontSize: 15, color: Colors.orange),
                                  ),
                                ),
                              ),

                              //information
                              Container(
                                //color: Colors.amber,
                                margin: EdgeInsets.only(top: 10, left: 10),
                                height: 400,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              'CẤP ĐỘ :',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              '0',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
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
                                              'ĐIỂM :',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              e['TotalNum'].toString(),
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
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
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              '${(e['LossNum'] + e['WinNum']).toString()}',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
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
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              e['WinNum'].toString(),
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
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
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              e['LossNum'].toString(),
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              'TÊN :',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              e['FullName'],
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
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
                                                  textStyle: const TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.orange),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                '${_user!.email}',
                                                style: GoogleFonts.bungee(
                                                  textStyle: const TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.orange),
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
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              'Nam',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              'NGÀY SINH :',
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              formatTimestamp(e['Birthday']),
                                              style: GoogleFonts.bungee(
                                                textStyle: const TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'COIN :',
                                                    style: GoogleFonts.bungee(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 25,
                                                              color: Colors
                                                                  .orange),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Text(
                                                    e['Coin'].toString(),
                                                    style: GoogleFonts.bungee(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 25,
                                                              color: Colors
                                                                  .orange),
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
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 25,
                                                              color: Colors
                                                                  .orange),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      EdgeInsets.only(left: 15),
                                                  child: Text(
                                                    e['CGD'].toString(),
                                                    style: GoogleFonts.bungee(
                                                      textStyle:
                                                          const TextStyle(
                                                              fontSize: 25,
                                                              color: Colors
                                                                  .orange),
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
                            ],
                          ),
                        ),
                        //footer

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                        pageBuilder: (_, __, ___) =>
                                            UpdateInformation(),
                                        transitionDuration:
                                            const Duration(milliseconds: 200),
                                        transitionsBuilder: (_, a, __, c) =>
                                            FadeTransition(
                                                opacity: a, child: c),
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
                          ],
                        ),
                      ],
                    );
                  }).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          // child:
        ),
      ),
    );
  }

  void level() {}
}
