part of 'todo_app_bloc.dart';

@immutable
abstract class TodoAppEvent {}

class selectEvent_NewTasks extends TodoAppEvent {}

class selectEvent_Done extends TodoAppEvent {}

class selectEvent_Archive extends TodoAppEvent {}

class insertEvent_NewTasks extends TodoAppEvent {
  String? title;
  String? date;
  String? time;
  insertEvent_NewTasks({this.title, this.date, this.time});
}

class deleteEvent extends TodoAppEvent {}

class changeBottomNavBarEvent extends TodoAppEvent {
  int currentIndex;
  changeBottomNavBarEvent(this.currentIndex);
}

class deleteFromDataBase_by_Where extends TodoAppEvent {
  int id;
  deleteFromDataBase_by_Where(this.id);
}
