import 'package:brain_hack/login.dart';
import 'package:brain_hack/utils.dart';
import 'package:flutter/material.dart';

class InputNewPassword extends StatelessWidget {
  InputNewPassword({super.key});
  TextEditingController _olPassword = TextEditingController();
  TextEditingController _newPassword = TextEditingController();

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

    Widget tvNewPasswordTitle = const Text(
      'MẬT KHẨU MỚI',
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

    Widget edtOldPassword = TextField(
      controller: _olPassword,
      obscureText: true,
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

    Widget edtNewPassword = TextField(
      controller: _newPassword,
      obscureText: true,
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

    Widget tvOldPassword = const Text(
      'MẬT KHẨU CŨ',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
        color: Colors.orange,
      ),
    );

    Widget tvNewPassword = const Text(
      'MẬT KHẨU MỚI',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Alata',
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
        if (_newPassword.text.isNotEmpty || _olPassword.text.isEmpty) {
          Utils.notification(context, 'Vui Lòng Nhập Đầy Đủ Thông Tin');
        } else {
          if (_olPassword.text == '') {
            final snackBar = SnackBar(
              content: Text('Đổi mật khẩu thành công'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            final snackBar = SnackBar(
              content: Text('Mật khẩu không đúng'),
            );
          }
        }
      },
      child: const Text(
        'THAY ĐỔI MẬT KHẨU',
        style: TextStyle(fontSize: 18, fontFamily: 'Alata'),
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
                //new password title
                Container(
                  // margin: const EdgeInsets.only(top: 15),
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
        shape: const CircleBorder(side: BorderSide()),
        icon: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: const Color(0xFF3B4DA3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
