import 'package:flutter/material.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';
import 'package:today/shared/componets/componets.dart';

String homescreen_router = 'homescreen';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  TextEditingController emailFeild = TextEditingController();

  TextEditingController passFeild = TextEditingController();

  bool ispassword = true;
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Form(
        key: FormKey,
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 250),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBoxHomeScreen(),
                    textBoxDefulat(
                        onChanged: (value) {
                          print(value);
                        },
                        text: "Email Address",
                        controller: emailFeild,
                        Prefixicon: Icons.email,
                        textInputType: TextInputType.emailAddress),
                    SizedBoxHomeScreen(),
                    textBoxDefulat(
                      text: "Password",
                      onChanged: (value) {},
                      controller: passFeild,
                      Prefixicon: Icons.lock,
                      functionSuffixIcon: () {
                        setState(() {
                          ispassword = !ispassword;
                          print(ispassword);
                        });
                      },
                      isPassword: ispassword ? true : false,
                      textInputType: TextInputType.visiblePassword,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            ispassword = !ispassword;
                            print(ispassword);
                          });
                        },
                      ),
                      vaildation: (value) {
                        if (value.isEmpty) {
                          return 'not Empity';
                        }
                        return null;
                      },
                    ),
                    SizedBoxHomeScreen(),
                    DefualteButtomHomeScreen(
                        text: 'Login',
                        function: () {
                          if (FormKey.currentState!.validate()) {
                            if (emailFeild.text == 'bxi@gmail.com' &&
                                passFeild.text == '1234') {
                              debugPrint(passFeild.text);
                              Navigator.pushNamed(
                                  context, messagerScreen_router);
                              print('fff');
                              emailFeild.text = '';
                              passFeild.text = '';
                            } else {}
                          }
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
                            onTap: () {},
                            child: Text(
                              'Regester Now',
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

SizedBoxHomeScreen() => SizedBox(
      height: 15,
    );
