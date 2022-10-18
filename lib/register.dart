import 'package:flutter/material.dart';

class Regiseter extends StatelessWidget {
  Widget tvAppName = const Text('BRAIN HACK',
      style: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w900,
        fontFamily: 'Fraunces',
        fontStyle: FontStyle.italic,
        color: Colors.orange,
      ));
  Widget imgvLogo = const Image(
    image: AssetImage('images/icon/logo.png'),
    fit: BoxFit.fitWidth,
    height: 180,
    width: 180,
  );
  Widget tvUsername = const Text(
    'TÊN ĐĂNG NHẬP',
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
        borderSide: BorderSide(
          color: Colors.blueGrey,
        ),
      ),
    ),
  );
  Widget txtPassword = TextField(
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
  Widget txtEmail = TextField(
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
      fontFamily: 'Fraunces',
      color: Colors.orange,
    ),
  );
  Widget tvPassword = const Text(
    'MẬT KHẨU',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Fraunces',
      color: Colors.orange,
    ),
  );
  Widget txtRepassword = TextField(
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Container(
              padding: EdgeInsets.only(
                bottom: 0,
              ),
              child: Column(
                children: [
                  //BrainHack
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: tvAppName,
                  ),
                  Container(padding: EdgeInsets.only(top: 15), child: imgvLogo),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'ĐĂNG KÝ',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Fraunces',
                        fontStyle: FontStyle.italic,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 90, top: 10, bottom: 5),
                    child: tvUsername,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 40),
                            child: txtUsername,
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
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 90, top: 10, bottom: 5),
                    child: Text(
                      'EMAIL',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fraunces',
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  //email
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
                      onPressed: () {},
                      child: Text(
                        'ĐĂNG KÝ',
                        style: TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
                      ),
                    ),
                  ),
                  //NÚT LÀM MÀU
                  const Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'CGD@Copyright',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
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
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pop(context);
            },
            label: const Text(''),
            shape: CircleBorder(side: BorderSide()),
            icon: const Icon(Icons.arrow_back_ios_new),
            backgroundColor: Colors.orange),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
