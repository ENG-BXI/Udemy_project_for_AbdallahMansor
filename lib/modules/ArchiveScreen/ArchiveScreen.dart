import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today/database_bloc/todo_app_bloc.dart';

class ArchiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoAppBloc mybloc = BlocProvider.of<TodoAppBloc>(context);
     print(mybloc.data_Archive);
    return BlocBuilder<TodoAppBloc, TodoAppState>(
      builder: (context, state) {
        if (mybloc.data_Archive.length != 0) {
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
                      mybloc.add(deleteFromDataBase_by_Where_Archive(
                          mybloc.data_Archive[index]['id']));

                      print(mybloc.data_Archive[index]['id']);
                    },
                    key: UniqueKey(),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 15.0),
                          child: CircleAvatar(
                            child: Text(
                                mybloc.data_Archive[index]['id'].toString()),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(mybloc.data_Archive[index]['TITLE']),
                              Row(
                                children: [
                                  Text(mybloc.data_Archive[index]['time']),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(mybloc.data_Archive[index]['date']),
                                ],
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            mybloc.add(updateDataBaseEvent(
                                mybloc.data_Archive[index]['id'], 'done'));

                            debugPrint("update done onpress");
                          },
                          icon: Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
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
                itemCount: mybloc.data_Archive.length),
          );
        } else {
          mybloc.add(selectEvent_Archive());
          return Center(
            child: Text(
              'Archive Tasks',
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
