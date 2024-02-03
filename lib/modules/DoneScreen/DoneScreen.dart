import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today/Bussines%20logic/database_bloc/todo_app_bloc.dart';


class DoneScren extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TodoAppBloc mybloc = BlocProvider.of<TodoAppBloc>(context);
     print(mybloc.data_Done);
    return BlocBuilder<TodoAppBloc, TodoAppState>(
      builder: (context, state) {
        if (mybloc.data_Done.length != 0) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(top: 15),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: Container(decoration: BoxDecoration( color: Color.fromARGB(255, 221, 94, 85),),
                     
                    ),
                    onDismissed: (direction) {
                      mybloc.add(deleteFromDataBase_by_Where_Done(
                          mybloc.data_Done[index]['id']));
                          
                      print(mybloc.data_Done[index]['id']);
                    },
                    key: UniqueKey(),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.only(start: 15.0),
                          child: CircleAvatar(
                            child: Text(
                                mybloc.data_Done[index]['id'].toString()),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(mybloc.data_Done[index]['TITLE']),
                              Row(
                                children: [
                                  Text(mybloc.data_Done[index]['time']),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(mybloc.data_Done[index]['date']),
                                ],
                              )
                            ],
                          ),
                        ),
                    
                        IconButton(
                          onPressed: () {
                            mybloc.add(updateDataBaseEvent(
                                mybloc.data_Done[index]['id'], 'Archive'));
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
                itemCount: mybloc.data_Done.length),
          );
        } else {
          mybloc.add(selectEvent_Done());
          return Center(
            child: Text(
              'Done Tasks',
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
