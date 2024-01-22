import 'package:flutter/material.dart';
import 'package:today/modules/BMIScreen/BMIScreen.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';
import 'modules/homescreen/homescreen.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: homescreen_router,
        routes: {
          homescreen_router: (BuildContext context) => homescreen(),
          messagerScreen_router: (BuildContext context) => messagerScreen(),
          BMIScreen_router: (BuildContext context) => BMIScreen(),
        });
  }
}
