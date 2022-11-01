import 'package:brain_hack/dialog_facebook_login.dart';
import 'package:brain_hack/dialog_google_login.dart';
import 'package:brain_hack/forget_password.dart';
import 'package:brain_hack/menu.dart';
import 'package:brain_hack/register.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome();
  }
}

class _LoginHome extends StatelessWidget {
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
    Widget tvUsername = const Text(
      'USERNAME',
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
          borderSide: const BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
    Widget tvPassword = const Text(
      'PASSWORD',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );
    Widget txtPassword = TextField(
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
      obscureText: true,
    );
    Widget btnLogin = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Menu(),
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ));
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
              pageBuilder: (_, __, ___) => const ForgetPassword(),
              transitionDuration: const Duration(milliseconds: 500),
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
                //text username
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvUsername,
                ),
                Container(
                  height: 45,
                  child: Row(
                    children: [
                      //icon username
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      //text filed username
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: txtUsername,
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
                  children: [
                    //icon button login with goole
                    Container(
                      child: ibtnGoogle,
                    ),
                    //icon button login with facebook
                    Container(
                      child: ibtnFacebook,
                    ),
                  ],
                ),

                const Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'CGD@Copyright',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
