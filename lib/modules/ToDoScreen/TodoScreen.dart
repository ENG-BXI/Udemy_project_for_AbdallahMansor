import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today/Bussines%20logic/BottomSheet_bloc/bottom_sheet_bloc.dart';
import 'package:today/Bussines%20logic/database_bloc/todo_app_bloc.dart';
import 'package:today/main.dart';
import 'package:today/modules/ArchiveScreen/ArchiveScreen.dart';
import 'package:today/modules/BMIScreen/BMIScreen.dart';
import 'package:today/modules/DoneScreen/DoneScreen.dart';
import 'package:today/modules/NewTask/NewTasks.dart';
import 'package:today/modules/homescreen/homescreen.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:today/shared/componets/componets.dart';

String TodoScreen_router = 'TodoScreen';
// Temp list
// اذا اردت التحويل بين اكثر من حاجة ( التبديل ) نستخدم الليست
// اذا اردت التحويل بين حاجتين ( التبديل ) نستخدم متغير بولين
class TodoScreen extends StatelessWidget {
  var Scaffoldkey = GlobalKey<ScaffoldState>();
  // List Screens = [NewTask(), DoneScren(), ArchiveScreen()];
  var bottomSheatKey = GlobalKey();
  // IconData iconFoatingActionBotton = Icons.edit;
  var FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // to esily used 
    TodoAppBloc mybloc = BlocProvider.of<TodoAppBloc>(context);

    return BlocProvider(
      create: (context) => BottomSheetBloc(),
      child: BlocConsumer<TodoAppBloc, TodoAppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            key: Scaffoldkey,
            appBar: AppBar(),
            body: mybloc.Screens[mybloc.currnetIndex],
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  mybloc.add(changeBottomNavBarEvent(value));
                  debugPrint('the number is  $value');
                  // CurrentIndex = value;
                  // setState(() {});
                },
                currentIndex: mybloc.currnetIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: 'Tasks'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.done), label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive), label: 'Archive'),
                ]),
            floatingActionButton:
                BlocBuilder<BottomSheetBloc, BottomSheetState>(
              builder: (context, state) {
                return FloatingActionButton(
                  onPressed: () {
                    if (BlocProvider.of<BottomSheetBloc>(context)
                        .isBottomSheetShown) {
                      debugPrint("ok pppp aas   ${state.isBottomSheetShown}");
                      //هل هو مفتوح
                      //اذا نعم
                      // تحقق اذا يسوا بفارغين
                      // ثم ضف البيانات الى القاعده
                      //واذا لا فعل الخطا
                      if (FormKey.currentState!.validate()) {
                        //اذا كان ممتلى اقفل
                        Navigator.pop(context);

                        mybloc.add(insertEvent_NewTasks(
                            title:mybloc. titleController.text,
                            date: mybloc. dateController.text,
                            time:mybloc.  timeController.text));
                        BlocProvider.of<BottomSheetBloc>(context)
                            .add(changeBottomSheetBarEvent(Icons.edit, false));
                       mybloc.  titleController.text = '';
                       mybloc.  dateController.text = '';
                       mybloc.  timeController.text = '';
                      }
                    } else {
                      debugPrint("ok pppp    ${state.isBottomSheetShown}");
                      // الاقفل عند اكتمال الاضافة الى القاعده
                      BlocProvider.of<BottomSheetBloc>(context)
                          .add(changeBottomSheetBarEvent(Icons.add, true));
                      // setState(
                      //   () {
                      //     iconFoatingActionBotton = Icons.add;
                      //     isBottomSheetShown = true;
                      //   },
                      // );
                      //اذا مش مفتوح افتحه
                      Scaffoldkey.currentState!
                          .showBottomSheet(
                            (context) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Form(
                                  key: FormKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      textBoxDefulat(
                                        text: "Tasks Title",
                                        controller:mybloc.  titleController,
                                        vaildation: (value) {
                                          if (value.isEmpty) {
                                            return 'Title must be Not Empty';
                                          }
                                          return null;
                                        },
                                        Prefixicon: Icons.title,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      textBoxDefulat(
                                        text: "Tasks Time",
                                        controller:mybloc.  timeController,
                                        vaildation: (value) {
                                          if (value.isEmpty) {
                                            return 'Time must be Not Empty';
                                          }
                                          return null;
                                        },
                                        Prefixicon: Icons.watch_later_outlined,
                                        onTap: () {
                                          showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay.now())
                                              .then((value) {
                                            mybloc. timeController.text = value
                                                    ?.format(context)
                                                    .toString() ??
                                               mybloc.  timeController.text;
                                          });
                                        },
                                        NotKeboard: true,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      textBoxDefulat(
                                        text: "Tasks Date",
                                        controller:mybloc.  dateController,
                                        vaildation: (value) {
                                          if (value.isEmpty) {
                                            return 'Date must be Not Empty';
                                          }
                                          return null;
                                        },
                                        Prefixicon:
                                            Icons.calendar_month_outlined,
                                        onTap: () {
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate:
                                                DateTime.parse('2024-09-27'),
                                          ).then((value) {
                                          mybloc.   dateController.text = value != null
                                                ? value.year.toString() +
                                                    "-" +
                                                    value.month.toString() +
                                                    "-" +
                                                    value.day.toString()
                                                : mybloc. dateController.text;
                                          });
                                        },
                                        NotKeboard: true,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                          .closed
                          .then((value) {
                            //عند الاقفال بالسحب
                            //عند الاقفل عدل قيمه الفحص الى لا
                            //عدل الايقونة الى الافتراضيه
                            BlocProvider.of<BottomSheetBloc>(context).add(
                                changeBottomSheetBarEvent(Icons.edit, false));

                            debugPrint(
                                "اقفال بالسحب ${BlocProvider.of<BottomSheetBloc>(context).isBottomSheetShown}");
                            // setState(() {
                            //   isBottomSheetShown = false;
                            //   iconFoatingActionBotton = Icons.edit;
                            // });
                          mybloc.   titleController.text = '';
                           mybloc.  dateController.text = '';
                          mybloc.   timeController.text = '';
                          });
                    }
                  },
                  child: Icon(BlocProvider.of<BottomSheetBloc>(context)
                      .iconFoatingActionBotton),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
