import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';
import 'package:today/main.dart';
import 'package:today/models/taskModel.dart';
import 'package:today/modules/ArchiveScreen/ArchiveScreen.dart';
import 'package:today/modules/DoneScreen/DoneScreen.dart';
import 'package:today/modules/NewTask/NewTasks.dart';
import 'package:today/modules/ToDoScreen/TodoScreen.dart';

part 'todo_app_event.dart';
part 'todo_app_state.dart';

class TodoAppBloc extends Bloc<TodoAppEvent, TodoAppState> {
  List<Map<String, dynamic>> data_NewTasks = [];
  List<Map<String, dynamic>> data_Done = [];
  List<Map<String, dynamic>> data_Archive = [];
  List Screens = [NewTask(), DoneScren(), ArchiveScreen()];

  // IconData iconFoatingActionBotton = Icons.edit;
  // bool isBottomSheetShown = false;
  int currnetIndex = 0;
  IconData iconFoatingActionBotton = Icons.edit;
  bool isBottomSheetShown = false;

  TextEditingController titleController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  Future<Database> CreateDatabase() async {
    Database database = await openDatabase(
      'todo.db',
      version: 4,
      onCreate: (db, version) {
        debugPrint("@@@@@@@@@@@@@@@@@@@ database is created");

        db
            .execute(
                'CREATE TABLE tasks(id INTEGER , TITLE TEXT , date TEXT , time TEXT , status TEXT)')
            .then(
          (value) {
            debugPrint('@@@@@@@@@@@@@@@@@@@@ table is created');
          },
        ).catchError(
          (error) {
            debugPrint("@@@@@@@@ this is error");
          },
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        db.execute("DROP TABLE tasks").then((value) {
          print('drop is ok');
        }).catchError((e) {
          print('is error $e');
        });
        debugPrint("@@@@@@@@@@@@@@@@@@@ database is created by Upgrade");
        db
            .execute(
                'CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL , TITLE TEXT , date TEXT , time TEXT , status TEXT)')
            .then(
          (value) {
            debugPrint('@@@@@@@@@@@@@@@@@@@@ table is created by Upgrade');
          },
        ).catchError(
          (error) {
            debugPrint("@@@@@@@@ this is error by Upgrade ");
          },
        );
      },
      onOpen: (db) {
        debugPrint('@@@@@@@@@@@@@@@@@@ databaseis opened');
      },
    );
    return database;
  }

  Future InsertDataBase({
    required String title,
    required String time,
    required String date,
  }) async {
    Database _db = await CreateDatabase();
    _db
        .rawInsert(
            'INSERT INTO tasks(TITLE,date,time,status) VALUES ("$title","$date","$time","new")')
        .then(
      (value) {
        debugPrint("${value.toString()} Insert is ok");
      },
    ).catchError(
      (error) {
        debugPrint("error $error");
      },
    );
  }

  Future<List<Map<String, Object?>>> SelectFromDataBase_NewTasks() async {
    Database _db = await CreateDatabase();
    List<Map<String, Object?>>? data = await _db
        .rawQuery("SELECT * FROM tasks where status = 'new'")
        .catchError(
      (error) {
        debugPrint(error.toString());
      },
    );
    return data;
  }

  Future<List<Map<String, Object?>>> SelectFromDataBase_Done() async {
    Database _db = await CreateDatabase();
    List<Map<String, Object?>>? data = await _db
        .rawQuery("SELECT * FROM tasks where status = 'done'")
        .catchError(
      (error) {
        debugPrint(error.toString());
      },
    );
    return data;
  }

  Future<List<Map<String, Object?>>> SelectFromDataBase_Archive() async {
    Database _db = await CreateDatabase();
    List<Map<String, Object?>>? data = await _db
        .rawQuery("SELECT * FROM tasks where status = 'Archive'")
        .catchError(
      (error) {
        debugPrint(error.toString());
      },
    );
    return data;
  }

  DeleteFromDatabase_All() async {
    Database? _db = await CreateDatabase();
    _db.rawDelete('DELETE FROM tasks');
  }

  DeleteFromDatabase_By_Where_Fun(int id) async {
    Database? _db = await CreateDatabase();
    _db.rawDelete('DELETE FROM tasks where id  = $id ');
  }

  Future<int> updateDataBase(
      {required String setstatusInQuere, required int id}) async {
    Database db = await CreateDatabase();
    int number = await db.rawUpdate(
        "UPDATE tasks SET status = '$setstatusInQuere' where id =$id ");
    return number;
  }

  TodoAppBloc() : super(TodoAppInitial()) {
    on<TodoAppEvent>(
      (event, emit) async {
        if (event is insertEvent_NewTasks) {
          await InsertDataBase(
              title: event.title ?? '',
              date: event.date ?? '',
              time: event.time ?? '');
          data_NewTasks = await SelectFromDataBase_NewTasks();

          emit(loadedState());
        } else if (event is selectEvent_NewTasks) {
          SelectFromDataBase_NewTasks().then(
            (value) {
              data_NewTasks = value;
            },
          );
          emit(loadedState());
        } else if (event is selectEvent_Done) {
          SelectFromDataBase_Done().then((value) {
            data_Done = value;
          });
          emit(loadedState());
        } else if (event is selectEvent_Archive) {
          SelectFromDataBase_Archive().then((value) {
            data_Archive = value;
          });
          emit(loadedState());
        } else if (event is deleteEvent) {
          await DeleteFromDatabase_All();
          data_NewTasks = await SelectFromDataBase_NewTasks();
          emit(
            loadedState(),
          );
        } else if (event is changeBottomNavBarEvent) {
          currnetIndex = event.currentIndex;

          emit(changeBottomNavBarState());
          emit(loadedState());
        } else if (event is deleteFromDataBase_by_Where_NewTasks) {
          DeleteFromDatabase_By_Where_Fun(event.id);
          data_NewTasks = await SelectFromDataBase_NewTasks();

          emit(loadedState());
        } else if (event is deleteFromDataBase_by_Where_Done) {
          DeleteFromDatabase_By_Where_Fun(event.id);
          data_Done = await SelectFromDataBase_Done();

          emit(loadedState());
        } else if (event is deleteFromDataBase_by_Where_Archive) {
          DeleteFromDatabase_By_Where_Fun(event.id);
          data_Archive = await SelectFromDataBase_Archive();

          emit(loadedState());
        } else if (event is updateDataBaseEvent) {
          updateDataBase(setstatusInQuere: event.status, id: event.id);
          data_NewTasks = await SelectFromDataBase_NewTasks();
          data_Done = await SelectFromDataBase_Done();
          data_Archive = await SelectFromDataBase_Archive();

          emit(loadedState());
        }
      },
    );
  }
}
