import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today/database_bloc/todo_app_bloc.dart';
import 'package:today/models/taskModel.dart';
import 'package:today/modules/ToDoScreen/TodoScreen.dart';

class NewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoAppBloc mybloc = BlocProvider.of<TodoAppBloc>(context);
    print(mybloc.data_NewTasks);
    return BlocBuilder<TodoAppBloc, TodoAppState>(
      builder: (context, state) {
        if (mybloc.data_NewTasks.length != 0) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(top: 15),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 94, 85),
                      ),
                    ),
                    onDismissed: (direction) {
                      mybloc.add(deleteFromDataBase_by_Where_NewTasks(
                          mybloc.data_NewTasks[index]['id']));
                      print(mybloc.data_NewTasks[index]['id']);
                    },
                    key: UniqueKey(),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 15.0),
                          child: CircleAvatar(
                            child: Text(
                                mybloc.data_NewTasks[index]['id'].toString()),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(mybloc.data_NewTasks[index]['TITLE']),
                              Row(
                                children: [
                                  Text(mybloc.data_NewTasks[index]['time']),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(mybloc.data_NewTasks[index]['date']),
                                ],
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            mybloc.add(updateDataBaseEvent(
                                mybloc.data_NewTasks[index]['id'], 'done'));
                            print( " the idex is  ${mybloc.data_NewTasks[index]['id']}");

                            debugPrint("update done onpress");
                          },
                          icon: Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            mybloc.add(updateDataBaseEvent(
                                mybloc.data_NewTasks[index]['id'], 'Archive'));
                          },
                          icon: Icon(
                            Icons.archive,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 15, bottom: 10, top: 10),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  );
                },
                itemCount: mybloc.data_NewTasks.length),
          );
        } else {
          mybloc.add(selectEvent_NewTasks());
          return Center(
            child: Text(
              'New Tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          );
        }
      },
    );
  }
}
