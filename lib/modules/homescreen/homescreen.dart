import 'package:flutter/material.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';
import 'package:today/shared/componets/componets.dart';

String homescreen_router = 'homescreen';
TextEditingController emailFeild = TextEditingController();
TextEditingController passFeild = TextEditingController();

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 250),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBoxHomeScreen(),
                  textBoxDefulat(
                      onChanged: (value) {
                        print(value);
                      },
                      text: "Email Address",
                      controller: emailFeild,
                      icon: Icons.email,
                      textInputType: TextInputType.emailAddress),
                  SizedBoxHomeScreen(),
                  textBoxDefulat(
                      text: "Password",
                      onChanged: (value) {},
                      controller: passFeild,
                      icon: Icons.lock,
                      isPassword: true,
                      textInputType: TextInputType.visiblePassword),
                  SizedBoxHomeScreen(),
                  DefualteButtomHomeScreen(
                      text: 'Login',
                      function: () {
                        if (emailFeild.text == 'bxi@gmail.com' &&
                            passFeild.text == '1234') {
                          debugPrint(passFeild.text);
                          Navigator.pushNamed(context, messagerScreen_router);
                          print('fff');
                          emailFeild.text = '';
                          passFeild.text = '';
                        } else {}
                      }),
                  SizedBoxHomeScreen(),
                  DefualteButtomHomeScreen(text: 'Register', function: () {}),
                  SizedBoxHomeScreen(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont\' have an account?'),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {}, child: Text('Regester Now')),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

SizedBoxHomeScreen() => SizedBox(
      height: 15,
    );
