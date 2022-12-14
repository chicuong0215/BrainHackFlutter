import 'package:brain_hack/dialog_picture.dart';
import 'package:brain_hack/input_new_password.dart';
import 'package:brain_hack/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UpdateInformationState();
}

class _UpdateInformationState extends State<UpdateInformation> {
  TextEditingController _Name = TextEditingController();
  TextEditingController _Calendar = TextEditingController();
  bool _rdb = true;
  String _Avatar = "images/icon/avatar.png";

  final _auth = FirebaseAuth.instance.currentUser;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _user =
      FirebaseFirestore.instance.collection('Account');

  void getData() async {
    final docRef = _user.doc(_auth!.email);
    await docRef.get().then((DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;

      _Name.text = data['FullName'];
      _Calendar.text = data['Birthday'];
      _rdb = data['Sex'];
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
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 20),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 93, 182, 255),
                        radius: 100,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 222, 241, 255),
                          radius: 95,
                          child: Image(
                            image: AssetImage('${_Avatar}'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 52,
                        child: IconButton(
                          iconSize: 50,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => DialogPicture());
                          },
                          icon: const Icon(
                            Icons.photo_camera,
                            color: Color.fromARGB(255, 93, 182, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 380,
                  margin: EdgeInsets.only(top: 15, left: 50, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
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
                                child: TextField(
                                  controller: _Name,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 5),
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
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                            ),
                            Container(
                              child: Radio<bool>(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: true,
                                groupValue: _rdb,
                                onChanged: ((value) {
                                  _CheckGender(value!);
                                }),
                              ),
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
                              child: Radio<bool>(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                value: false,
                                groupValue: _rdb,
                                onChanged: ((value) {
                                  _CheckGender(value!);
                                }),
                              ),
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
                        height: 45,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                'NGÀY SINH :',
                                style: GoogleFonts.bungee(
                                  textStyle: const TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _Calendar,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  suffixIcon: IconButton(
                                      icon: Icon(Icons.calendar_month),
                                      onPressed: () {
                                        showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(
                                                DateTime.now().year - 80),
                                            lastDate: DateTime(
                                                DateTime.now().year + 10),
                                            builder: (context, picker) {
                                              return Theme(
                                                data: ThemeData.dark().copyWith(
                                                  colorScheme:
                                                      const ColorScheme.dark(
                                                    primary: Colors.deepPurple,
                                                    onPrimary: Colors.white,
                                                    surface: Colors.greenAccent,
                                                    onSurface: Colors.black,
                                                  ),
                                                  dialogBackgroundColor:
                                                      Colors.white,
                                                ),
                                                child: picker!,
                                              );
                                            }).then((selectedDate) {
                                          if (selectedDate != null) {
                                            var format =
                                                DateFormat('dd-MM-yyyy');

                                            _Calendar.text = format
                                                .format(selectedDate)
                                                .toString();
                                          }
                                        });
                                      }),
                                ),
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (_, __, ___) =>
                                            InputNewPassword(),
                                        transitionDuration:
                                            const Duration(milliseconds: 500),
                                        transitionsBuilder: (_, a, __, c) =>
                                            FadeTransition(
                                                opacity: a, child: c),
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
                                onPressed: () {
                                  _user.doc(_auth!.email).update({
                                    "FullName": _Name.text,
                                    "Sex": _rdb,
                                    "Birthday": _Calendar.text,
                                  });
                                  // print(deFormatTimestamp(
                                  //     _Calendar.text.toString()));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Profile(),
                                      ));
                                },
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
            )
          ],
        ),
      ),
    );
  }

  DateTime newMethod(DateTime selectedDate) => selectedDate;

  void _CheckGender(bool value) {
    setState(() {
      _rdb = value;
    });
  }
}
