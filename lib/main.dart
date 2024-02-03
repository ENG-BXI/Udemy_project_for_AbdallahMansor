import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:today/Bussines%20logic/database_bloc/todo_app_bloc.dart';
import 'package:today/models/taskModel.dart';
import 'package:today/modules/BMIScreen/BMIScreen.dart';
import 'package:today/modules/NewTask/NewTasks.dart';
import 'package:today/modules/ToDoScreen/TodoScreen.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';
import 'modules/homescreen/homescreen.dart';


/* 
test branch
*/
void main(List<String> args) {
  runApp(myapp());
}

// مشروع يضم اكثر من شاشة مختلفه
// خاص بدورة عبدالله منصور فلاتر

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoAppBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TodoScreen_router,
        routes: {
          homescreen_router: (BuildContext context) => homescreen(),
          messagerScreen_router: (BuildContext context) => messagerScreen(),
          BMIScreen_router: (BuildContext context) => BMIScreen(),
          TodoScreen_router: (BuildContext context) => TodoScreen(),
        },
      ),
    );
  }
}

