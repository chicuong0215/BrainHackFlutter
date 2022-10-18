import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
    image: AssetImage('images/icon/logo.png'),
    fit: BoxFit.fitWidth,
    height: 180,
    width: 180,
  );
  Widget tvLogin = const Text(
    'ĐĂNG NHẬP',
    style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      fontFamily: 'Fraunces',
      fontStyle: FontStyle.italic,
      color: Colors.orange,
    ),
  );
  Widget tvUsername = const Text(
    'USERNAME',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Fraunces',
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
      fontFamily: 'Fraunces',
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
    onPressed: () {},
    child: const Text(
      'ĐĂNG NHẬP',
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Fraunces',
      ),
    ),
  );
  Widget tbtnForget = TextButton(
    onPressed: () {},
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
    onPressed: () {},
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
    onPressed: () {},
    icon: Image.asset(
      ('images/icon/google.png'),
    ),
  );
  Widget ibtnFacebook = IconButton(
    color: Colors.blue,
    iconSize: 40,
    onPressed: () {},
    icon: Image.asset('images/icon/facebook.png'),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: tvAppName,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: imgvLogo,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: tvLogin,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvUsername,
                ),
                Container(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: txtUsername,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvPassword,
                ),
                Container(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.lock_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 40),
                          child: txtPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: btnLogin,
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: tbtnForget,
                ),
                Container(
                  child: Row(
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
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ibtnGoogle,
                      ),
                      Container(
                        child: ibtnFacebook,
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'CGD@Copyright',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
