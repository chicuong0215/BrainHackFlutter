import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
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
  final Map<String, dynamic> e = new Map();

  String formatTimestamp(Timestamp timestamp) {
    var format = new DateFormat('dd/MM/y');
    return format.format(timestamp.toDate());
  }

  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instanceFor(
          bucket: 'gs://app-brain-hack.appspot.com');

  // void loadAccount() {
  //   final list = [];
  //   final res = FirebaseFirestore.instance
  //       .collection('Account')
  //       .doc(_user!.email)
  //       .get()
  //       .then((value) {
  //     print(value.data());
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference uesr = FirebaseFirestore.instance.collection('Account');
    // loadAccount();
    return FutureBuilder<DocumentSnapshot>(
      future: uesr.doc(_user!.email).get(),
      builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Lỗi kết nối");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Tài khoản không tồn tại");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
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
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 20, left: 20, right: 20, bottom: 10),
                        child: Column(
                          children: [
                            //stats

                            Container(
                              child: CircleAvatar(
                                radius: 85,
                                backgroundImage:
                                    NetworkImage("${data['Avatar']}"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'ID: ${_user!.email}',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Điểm: ${data['TotalNum']}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'SỐ TRẬN:  ${(data['LossNum'] + data['WinNum'])}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'THẮNG: ${(data['WinNum'])}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'THUA: ${(data['LossNum'])}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            'TÊN: ${data['FullName']}',
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
                                              'EMAIL: ${(data['Email'])}',
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
                                    child: Text(
                                      'GIỚI TÍNH: ${(data['Sex'] == true) ? 'Nam' : 'Nữ'}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'NGÀY SINH: ${formatTimestamp(data['Birthday'])}',
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 25, color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'COIN: ${(data['Coin'])}',
                                          style: GoogleFonts.bungee(
                                            textStyle: const TextStyle(
                                                fontSize: 25,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ),
                                    ],
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
                        ],
                      ),
                    ],
                  ),
                  // child:
                ),
              ),
            ),
          );
        }
        return const Center(
          child: Text(
            'Đang lấy dữ liệu',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
