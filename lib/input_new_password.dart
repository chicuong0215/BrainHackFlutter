import 'package:brain_hack/dialog_facebook_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNewPassword extends StatelessWidget {
  const InputNewPassword({super.key});

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
      height: 180,
      width: 180,
    );

    Widget tvNewPasswordTitle = const Text(
      'MẬT KHẨU MỚI',
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        fontFamily: 'Fraunces',
        fontStyle: FontStyle.italic,
        color: Colors.orange,
      ),
    );

    Widget edtOldPassword = TextField(
      obscureText: true,
      textAlignVertical: TextAlignVertical.top,
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

    Widget edtNewPassword = TextField(
      obscureText: true,
      textAlignVertical: TextAlignVertical.top,
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

    Widget tvOldPassword = const Text(
      'MẬT KHẨU CŨ',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Fraunces',
        color: Colors.orange,
      ),
    );

    Widget tvNewPassword = const Text(
      'MẬT KHẨU MỚI',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Fraunces',
        color: Colors.orange,
      ),
    );

    Widget btnChange = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(180, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        showDialog(
          barrierColor: Colors.black26,
          context: context,
          builder: (context) {
            return const DialogFacebookLogin();
          },
        );
      },
      child: const Text(
        'THAY ĐỔI MẬT KHẨU',
        style: TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
      ),
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          //body
          child: Center(
            child: Column(
              children: [
                //app name
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: tvAppName,
                ),
                //logo
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: imgvLogo,
                ),
                //new password title
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: tvNewPasswordTitle,
                ),
                //old password
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvOldPassword,
                ),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.lock,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 30),
                          child: edtOldPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                //new password
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 90, top: 15, bottom: 5),
                  child: tvNewPassword,
                ),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const Icon(
                          Icons.lock,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 30),
                          child: edtNewPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: btnChange,
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
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text(''),
          shape: const CircleBorder(side: BorderSide()),
          icon: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: Colors.orange,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
