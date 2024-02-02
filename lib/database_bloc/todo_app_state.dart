part of 'todo_app_bloc.dart';

@immutable
abstract class TodoAppState {
  
}

class TodoAppInitial extends TodoAppState {}

class loadedState extends TodoAppState {

}

class loadingState extends TodoAppState {
  
}

class changeBottomNavBarState extends TodoAppState {
  
}

