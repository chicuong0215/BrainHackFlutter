import 'package:brain_hack/friend_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendItem extends StatefulWidget {
  const FriendItem({super.key});

  @override
  State<StatefulWidget> createState() => _FriendItem();
}

class _FriendItem extends State<FriendItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF090050),
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('Account').snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Row(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          FriendProfile(email: ''),
                                      transitionDuration:
                                          const Duration(milliseconds: 100),
                                      transitionsBuilder: (_, a, __, c) =>
                                          FadeTransition(opacity: a, child: c),
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
                                      color: Color.fromARGB(255, 17, 0, 255)),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ));
                }).toList(),
              );
            }));
  }
}
