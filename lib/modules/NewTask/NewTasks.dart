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
    mybloc.add(selectEvent_NewTasks());

    return BlocBuilder<TodoAppBloc, TodoAppState>(
      builder: (context, state) {
        if (mybloc.data_NewTasks.length != 0) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 15, top: 15),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        child:
                            Text(mybloc.data_NewTasks[index]['id'].toString()),
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
                          mybloc.add(deleteFromDataBase_by_Where(
                              mybloc.data_NewTasks[index]['id']));
                          debugPrint("delete onpress");
                        },
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.archive,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
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
