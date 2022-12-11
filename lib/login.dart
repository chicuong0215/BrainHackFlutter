import 'package:brain_hack/dialog_facebook_login.dart';
import 'package:brain_hack/dialog_google_login.dart';
import 'package:brain_hack/forget_password.dart';
import 'package:brain_hack/menu.dart';
import 'package:brain_hack/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _ShowPass = false;
  // var _UPInvalid = true;
  // var _txtUP = 'Tài Khoản Hoặc Mật Khẩu Không Đúng';
  TextEditingController _EmailController =
      TextEditingController(text: 'hello@gmail.com');
  TextEditingController _PassController = TextEditingController(text: '123456');
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Widget tvAppName = const Text(
      'BRAIN HACK',
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w900,
        fontFamily: 'Fraunces',
        fontStyle: FontStyle.italic,
        color: Colors.orange,
      ),
    );
    Widget imgvLogo = const Image(
      image: AssetImage('images/icon/logo_v2.png'),
      fit: BoxFit.fitWidth,
      height: 240,
      width: 240,
    );
    Widget tvLogin = const Text(
      'ĐĂNG NHẬP',
      style: TextStyle(
          fontSize: 35,
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
    Widget tvEmail = const Text(
      'EMAIL',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget txtEmail = TextField(
      controller: _EmailController,
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
    Widget tvPassword = const Text(
      'MẬT KHẨU',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget txtPassword = TextField(
      controller: _PassController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        suffixIcon: _ShowPass
            ? IconButton(
                icon: Icon(Icons.panorama_fish_eye),
                onPressed: () {
                  onChangeShowPass();
                },
              )
            : IconButton(
                icon: Icon(Icons.remove_red_eye),
                onPressed: () {
                  onChangeShowPass();
                },
              ),
      ),
      obscureText: !_ShowPass,
    );
    Widget btnLogin = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () async {
        if (_EmailController.text.isEmpty || _PassController.text.isEmpty) {
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
          try {
            final _user = (await _auth.signInWithEmailAndPassword(
                    email: _EmailController.text,
                    password: _PassController.text))
                .user;
            _auth.authStateChanges().listen(
              (event) {
                if (event != null) {
                  _EmailController.clear();
                  _PassController.clear();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Menu(),
                      transitionDuration: const Duration(milliseconds: 100),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                }
              },
            );
          } catch (e) {
            final snackBar = SnackBar(
              content: Text('EMAIL HOẶC MẬT KHẨU KHÔNG ĐÚNG'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        }
      },
      child: const Text(
        'ĐĂNG NHẬP',
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Alata',
        ),
      ),
    );
    Widget tbtnForget = TextButton(
      onPressed: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => ForgetPassword(),
              transitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ));
      },
      child: const Text(
        'QUÊN MẬT KHẨU',
        style: TextStyle(
          fontSize: 15,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget tbtnRegister = TextButton(
      onPressed: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Register(),
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ));
      },
      child: const Text(
        'ĐĂNG KÝ',
        style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget ibtnGoogle = IconButton(
      iconSize: 40,
      onPressed: () {
        showDialog(
          barrierColor: Colors.black26,
          context: context,
          builder: (context) {
            return const DialogGoogleLogin();
          },
        );
      },
      icon: Image.asset(
        ('images/icon/google.png'),
      ),
    );

    Widget ibtnFacebook = IconButton(
      color: Colors.blue,
      iconSize: 40,
      onPressed: () {
        showDialog(
          barrierColor: Colors.black26,
          context: context,
          builder: (context) {
            return const DialogFacebookLogin();
          },
        );
      },
      icon: Image.asset('images/icon/facebook.png'),
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
                //name app
                // Container(
                //   margin: const EdgeInsets.only(top: 15),
                //   child: tvAppName,
                // ),
                //logo
                Container(
                  padding: const EdgeInsets.only(top: 55),
                  child: imgvLogo,
                ),
                //text login
                Container(
                  // margin: const EdgeInsets.only(top: 15),
                  child: tvLogin,
                ),
                //text Email
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvEmail,
                ),
                Container(
                  height: 45,
                  child: Row(
                    children: [
                      //icon Email
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.email,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      //text filed Email
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: txtEmail,
                        ),
                      ),
                    ],
                  ),
                ),
                //text password

                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvPassword,
                ),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      //icon password
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.lock_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      //text filed password
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: txtPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                //button login
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: btnLogin,
                ),
                //text button forget
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: tbtnForget,
                ),
                //text button register and text loginer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    tbtnRegister,
                    const Text(
                      'HOẶC ĐĂNG NHẬP BẰNG',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ibtnGoogle, ibtnFacebook],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onChangeShowPass() {
    setState(() {
      _ShowPass = !_ShowPass;
    });
  }

  // void onSiginClick() {
  //   setState(() {
  //     if (_UserController.text == null || _PassController.text == null) {
  //       _UPInvalid == true;
  //     } else {
  //       _UPInvalid == false;
  //     }
  //   });
  // }
}
