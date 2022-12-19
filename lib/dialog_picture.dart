import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogPicture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogPictureState();
}

class _DialogPictureState extends State<DialogPicture> {
  String? tam;
  String avartarNow = "";
  String avatar = 'images/avatar/avatar.png';
  String avatar2 = 'images/avatar/avatar2.png';
  String avatar3 = 'images/avatar/avatar3.png';
  String avatar4 = 'images/avatar/avatar4.png';
  String avatar5 = 'images/avatar/avatar5.png';
  String avatar6 = 'images/avatar/avatar6.png';

  final _auth = FirebaseAuth.instance.currentUser;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _user =
      FirebaseFirestore.instance.collection('Account');

  void getData() async {
    final docRef = _user.doc(_auth!.email);
    await docRef.get().then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      avartarNow = data['Avatar'];
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

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
                          child: CircleAvatar(
                            radius: 40,
                            child: Image(
                              image: AssetImage('${avartarNow}'),
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar;
                            },
                            icon: Image(
                              image: AssetImage('${avatar}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar2;
                            },
                            icon: Image(
                              image: AssetImage('${avatar2}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar3;
                            },
                            icon: Image(
                              image: AssetImage('${avatar3}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar4;
                            },
                            icon: Image(
                              image: AssetImage('${avatar4}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar5;
                            },
                            icon: Image(
                              image: AssetImage('${avatar5}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: IconButton(
                            onPressed: () {
                              tam = avatar6;
                            },
                            icon: Image(
                              image: AssetImage('${avatar6}'),
                              fit: BoxFit.cover,
                            ),
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
                          child: TextButton(
                            onPressed: () {},
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
