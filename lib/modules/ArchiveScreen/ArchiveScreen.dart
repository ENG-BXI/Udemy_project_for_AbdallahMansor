import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today/database_bloc/todo_app_bloc.dart';

class ArchiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoAppBloc mybloc = BlocProvider.of<TodoAppBloc>(context);
    mybloc.add(selectEvent_Archive());

    return BlocBuilder<TodoAppBloc, TodoAppState>(
      builder: (context, state) {
        
        
        if (mybloc.data_Archive.length != 0) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 15, top: 15),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CircleAvatar(
                        child:
                            Text(mybloc.data_Archive[index]['id'].toString()),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
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
                      )
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
                itemCount: mybloc.data_Archive.length),
          );
        } else {
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
