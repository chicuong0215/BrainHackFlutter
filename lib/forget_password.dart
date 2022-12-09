import 'dart:html';

import 'package:brain_hack/input_new_password.dart';
import 'package:brain_hack/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ForgetPassword extends StatelessWidget {
  final Email email = Email(
    body: 'Email body',
    subject: 'Email subject',
    recipients: ['example@example.com'],
    cc: ['cc@example.com'],
    bcc: ['bcc@example.com'],
    attachmentPaths: ['/path/to/attachment.zip'],
    isHTML: false,
  );

  final _auth = FirebaseAuth.instance;
  TextEditingController _Email = TextEditingController();
  TextEditingController _CodeEmail = TextEditingController();
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

    Widget tvForgetPasswordTitle = const Text(
      'QUÊN MẬT KHẨU',
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
    );

    Widget edtUsername = TextField(
      keyboardType: TextInputType.text,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );

    Widget edtEmail = TextField(
      controller: _Email,
      keyboardType: TextInputType.emailAddress,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );

    Widget edtCode = TextField(
      controller: _CodeEmail,
      keyboardType: TextInputType.number,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: ElevatedButton(
          onPressed: () {
            FlutterEmailSender.send(email);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: const Text('LẤY MÃ',
                style: TextStyle(
                  fontFamily: 'Alata',
                )),
          ),
        ),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );

    Widget tvEmail = const Text(
      'EMAIL',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );

    Widget tvCode = const Text(
      'MÃ XÁT NHẬN',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );

    Widget btnContinue = Container(
      padding: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          minimumSize: const Size(180, 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          if (_CodeEmail.text.isEmpty || _CodeEmail.text.isEmpty) {
            Utils.notification(context, 'Vui Lòng Nhập Đầy Đủ Thông Tin');
          } else {
            try {
              final _user = _auth.signInWithEmailAndPassword(
                  email: _Email.text, password: _CodeEmail.text);
              _auth.authStateChanges().listen(
                (event) {
                  if (event != null) {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => InputNewPassword(),
                        transitionDuration: const Duration(milliseconds: 100),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  } else {
                    final snackBar = SnackBar(
                      content: Text('EMAIL HOẶC MẬT XÁC THỰC EMAIL KHÔNG ĐÚNG'),
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
        },
        child: const Text(
          'TIẾP THEO',
          style: TextStyle(fontSize: 18, fontFamily: 'Alata'),
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
              //app name
              // Container(
              //   margin: const EdgeInsets.only(top: 15),
              //   child: tvAppName,
              // ),
              //logo
              Container(
                margin: const EdgeInsets.only(top: 55),
                child: imgvLogo,
              ),
              //forget password title
              Container(
                // margin: const EdgeInsets.only(top: 15),
                child: tvForgetPasswordTitle,
              ),
              //username

              //email
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                child: tvEmail,
              ),
              SizedBox(
                height: 45,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: const Icon(
                        Icons.email,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: edtEmail,
                      ),
                    ),
                  ],
                ),
              ),
              //code
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                child: tvCode,
              ),
              SizedBox(
                height: 45,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: const Icon(
                        Icons.sms,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: edtCode,
                      ),
                    ),
                  ],
                ),
              ),
              btnContinue,
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Text(''),
        shape: const CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: const Color(0xFF3B4DA3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
