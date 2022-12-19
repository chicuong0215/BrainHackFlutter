import 'package:brain_hack/friend_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFriend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListFriend();
}

class _ListFriend extends State<ListFriend> {
  @override
  Widget build(BuildContext context) {
    //
    Widget rowTitle = Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/icon/head.png'), fit: BoxFit.contain)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 60,
            onPressed: () {},
            icon: const Image(
              image: AssetImage('images/icon/logo_v2.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 115),
            child: const Text(
              'BẠN BÈ',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Fraunces',
                  color: Color(
                    0xFFFC5658,
                  ),
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 1,
                      color: Colors.white,
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
    //

    return Scaffold(
      backgroundColor: const Color(0xFF090050),
      body: Scaffold(
          backgroundColor: const Color(0xFF090050),
          body: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('Account').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Column(
                  children: [
                    rowTitle,
                    Column(
                      children: snapshot.data!.docs.map((document) {
                        return Container(
                            child: Container(
                          padding: EdgeInsets.all(3),
                          child: Container(
                              padding: EdgeInsets.all(15),
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.9)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 40),
                                    child: Image.network(document['Avatar']),
                                  ),
                                  Container(
                                    child: IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (_, __, ___) =>
                                                FriendProfile(
                                                    email: document['Email']),
                                            transitionDuration: const Duration(
                                                milliseconds: 100),
                                            transitionsBuilder: (_, a, __, c) =>
                                                FadeTransition(
                                                    opacity: a, child: c),
                                          ),
                                        )
                                      },
                                      icon: const Icon(Icons.info_sharp),
                                      iconSize: 30,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      document['FullName'],
                                      style: GoogleFonts.bungee(
                                        textStyle: const TextStyle(
                                            fontSize: 16.5,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(1, 3),
                                                blurRadius: 1,
                                                color: Color.fromARGB(
                                                    255, 113, 113, 113),
                                              )
                                            ],
                                            color: Color.fromARGB(
                                                255, 17, 0, 255)),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {}, child: Text('KẾT BẠN'))
                                ],
                              )),
                        ));
                      }).toList(),
                    )
                  ],
                );
              })),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(''),
          shape: const CircleBorder(side: BorderSide()),
          icon: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
