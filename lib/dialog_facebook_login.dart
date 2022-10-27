import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogFacebookLogin extends StatefulWidget {
  const DialogFacebookLogin({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DialogFacebookLogin();
  }
}

class _DialogFacebookLogin extends State<DialogFacebookLogin> {
  @override
  void initState() {
    super.initState();
  }

  Widget tvTitle = Container(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color(0xFF3168D8),
    ),
    child: const Text(
      "Đăng nhập với Facebook",
      style: TextStyle(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
  Widget image = Image.asset(
    'images/icon/facebook.png',
    width: 45,
    height: 45,
  );
  Widget edtEmail = TextField(
    cursorColor: Colors.blue,
    textAlignVertical: TextAlignVertical.top,
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xFFCBDEFF),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );

  Widget edtPassword = TextField(
    obscureText: true,
    cursorColor: Colors.blue,
    textAlignVertical: TextAlignVertical.top,
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xFFCBDEFF),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  Widget tvEmail = const Text(
    'SỐ ĐIỆN THOẠI/EMAIL',
    style: TextStyle(
      fontSize: 18,
      backgroundColor: Color.fromARGB(0, 202, 222, 255),
      fontWeight: FontWeight.bold,
      color: Color(0xFF3168D8),
    ),
  );

  Widget tvPassword = const Text(
    'MẬT KHẨU',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xFF3168D8),
    ),
  );
  Widget cbSavePassword = Checkbox(value: false, onChanged: ((value) => {}));

  Widget tvSavePassword = const Text(
    'Lưu mật khẩu',
    style: TextStyle(
      fontSize: 18,
      color: Color(0xFF3168D8),
    ),
  );
  Widget btnLogin = ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF3168D8),
      minimumSize: const Size(180, 45),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    onPressed: () {},
    child: const Text(
      'ĐĂNG NHẬP',
      style: TextStyle(fontSize: 18),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:
          const EdgeInsets.only(top: 150, bottom: 150, left: 9, right: 9),
      // ignore: sort_child_properties_last
      child: Container(
        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.4)),
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFCBDEFF)),
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: tvTitle,
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                image,
                const Padding(padding: EdgeInsets.only(top: 15)),
                //username
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 60, top: 15, bottom: 5),
                  child: tvEmail,
                ),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 9),
                        child: const Icon(
                          Icons.person,
                          size: 40,
                          color: Color(0xFF3168D8),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 9),
                          child: edtEmail,
                        ),
                      ),
                    ],
                  ),
                ),
                //email
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 60, top: 15, bottom: 5),
                  child: tvPassword,
                ),
                SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 9),
                        child: const Icon(
                          Icons.lock,
                          size: 40,
                          color: Color(0xFF3168D8),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 9),
                          child: edtPassword,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [cbSavePassword, tvSavePassword],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: btnLogin,
                )
              ],
            ),
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
