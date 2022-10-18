import 'package:brain_hack/input_new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
      image: AssetImage('images/icon/logo.png'),
      fit: BoxFit.fitWidth,
      height: 180,
      width: 180,
    );

    Widget tvForgetPasswordTitle = const Text(
      'QUÊN MẬT KHẨU',
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        fontFamily: 'Fraunces',
        fontStyle: FontStyle.italic,
        color: Colors.orange,
      ),
    );

    Widget edtUsername = TextField(
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

    Widget edtEmail = TextField(
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

    Widget edtCode = TextField(
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text('Lấy mã'),
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

    Widget tvUsername = const Text(
      'USERNAME',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Fraunces',
        color: Colors.orange,
      ),
    );

    Widget tvEmail = const Text(
      'EMAIL',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Fraunces',
        color: Colors.orange,
      ),
    );

    Widget tvCode = const Text(
      'MÃ XÁT NHẬN',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Fraunces',
        color: Colors.orange,
      ),
    );

    Widget btnContinue = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(180, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InputNewPassword()));
      },
      child: const Text(
        'TIẾP THEO',
        style: TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
      ),
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          //body
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
              //forget password title
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: tvForgetPasswordTitle,
              ),
              //username
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 90, top: 15),
                child: tvUsername,
              ),
              SizedBox(
                height: 45,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 30),
                        child: edtUsername,
                      ),
                    ),
                  ],
                ),
              ),
              //email
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 90, top: 15),
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
                padding: const EdgeInsets.only(left: 90, top: 15),
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
              Container(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InputNewPassword()));
                  },
                  child: const Text(
                    'TIẾP THEO',
                    style: TextStyle(fontSize: 18, fontFamily: 'Fraunces'),
                  ),
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
    );
  }
}
