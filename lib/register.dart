import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:brain_hack/dialog_exit.dart';
import 'package:brain_hack/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PassController = TextEditingController();
  TextEditingController _RePassController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  CollectionReference DangKy = FirebaseFirestore.instance.collection('Account');
  //create room
  Future<void> dangKy(
    String email,
  ) {
    DocumentReference dk = FirebaseFirestore.instance
        .collection('Account')
        .doc(_EmailController.text);
    return dk.set({
      'Email': email,
      'Avatar': '',
      'Birthday': DateTime(2000, 1, 1),
      'FullName': 'account',
      'Sex': true,
      'LossNum': 0,
      'WinNum': 0,
      'SocialLink': '',
      'Coin': 20,
      'Score': 0,
      'Math': 0,
      'Universe': 0,
      'World cup': 0,
      'Geography': 0,
      'Stt': true,
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget tvAppName = const Text('BRAIN HACK',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w900,
          fontFamily: 'Fraunces',
          fontStyle: FontStyle.italic,
          color: Colors.orange,
        ));
    Widget imgvLogo = const Image(
      image: AssetImage('images/icon/logo_v2.png'),
      fit: BoxFit.fitWidth,
      height: 240,
      width: 240,
    );
    Widget tvUsername = const Text(
      'TÊN ĐĂNG NHẬP',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget txtUsername = TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );

    Widget txtEmail = TextField(
      controller: _EmailController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
    Widget tvEmail = const Text(
      'XÁC NHẬN LẠI MẬT KHẨU',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget tvPassword = const Text(
      'MẬT KHẨU',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget txtRepassword = TextField(
      obscureText: true,
      controller: _RePassController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );

    Widget txtPassword = TextField(
      controller: _PassController,
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
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
                Column(
                  children: [
                    //BrainHack
                    // Container(
                    //   margin: EdgeInsets.only(top: 15),
                    //   child: tvAppName,
                    // ),
                    Container(
                        padding: EdgeInsets.only(top: 55), child: imgvLogo),
                    Container(
                      // padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'ĐĂNG KÝ',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Fraunces',
                            fontStyle: FontStyle.italic,
                            color: Colors.orange,
                            shadows: [
                              Shadow(
                                offset: Offset(-1, -1),
                                blurRadius: 1,
                                color: Color.fromARGB(255, 33, 243, 229),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 90, top: 10, bottom: 5),
                      child: Text(
                        'EMAIL',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Alata',
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 25,
                            ),
                            child: Icon(
                              Icons.email,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 40),
                              child: txtEmail,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 90, top: 10, bottom: 5),
                      child: tvPassword,
                    ),
                    //txtPassword
                    Container(
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.lock_outlined,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 40),
                              child: txtPassword,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 90, top: 10, bottom: 5),
                      child: tvEmail,
                    ),
                    // xâc nhận mật khẩu
                    Container(
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.password_outlined,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 40),
                              child: txtRepassword,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //email

                    //NÚT ĐĂNG KÍ
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(200, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () async {
                          if (_EmailController.text.isEmpty ||
                              _PassController.text.isEmpty) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    "Email Và Mật Khẩu",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  content: const Text(
                                    'Vui lòng nhập Email và Password',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("OK"),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            if (_RePassController.text ==
                                _PassController.text) {
                              if (!await checkIfEmailInUse(
                                      _EmailController.text) &&
                                  _PassController.text.length >= 6) {
                                dangKy(_EmailController.text);
                                register();

                                final snackBar = SnackBar(
                                  content: Text('Đăng ký thành công'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                if (_PassController.text.length < 6) {
                                  final snackBar = SnackBar(
                                    content: Text(
                                        'Mật khẩu chưa đủ ký tự hoặc email định dang sai'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                } else {
                                  final snackBar = SnackBar(
                                    content: Text('Tài khoản đã tồn tại'),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              }
                            } else {
                              final snackBar = SnackBar(
                                content: Text('Mật khẩu xác nhận không đúng'),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }
                        },
                        child: Text(
                          'ĐĂNG KÝ',
                          style: TextStyle(fontSize: 18, fontFamily: 'Alata'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(''),
          shape: CircleBorder(side: BorderSide()),
          icon: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: const Color(0xFF3B4DA3)),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

  void register() {
    try {
      final _user = _auth.createUserWithEmailAndPassword(
          email: _EmailController.text, password: _PassController.text);
      _auth.authStateChanges().listen(
        (event) {
          if (_EmailController != null) {
            showDialog(
              context: context,
              builder: (context) => DialogExit(),
            );
          }
          if (event != null) {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Login(),
                transitionDuration: const Duration(milliseconds: 100),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ),
            );
          } else {
            final snackBar = SnackBar(
              content: Text('EMAIL HOẶC MẬT KHẨU KHÔNG ĐÚNG'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
      );
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('LỖI KẾT NỐI'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<bool> checkIfEmailInUse(String emailAddress) async {
    try {
      // Fetch sign-in methods for the email address
      final list =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);

      // In case list is not empty
      if (list.isNotEmpty) {
        // Return true because there is an existing
        // user using the email address
        return true;
      } else {
        // Return false because email adress is not in use
        return false;
      }
    } catch (error) {
      // Handle error
      // ...
      return true;
    }
  }
}
