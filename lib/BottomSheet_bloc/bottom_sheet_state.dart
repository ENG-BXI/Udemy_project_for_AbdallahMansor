part of 'bottom_sheet_bloc.dart';

@immutable
abstract class BottomSheetState {
  IconData? iconFoatingActionBotton;
  bool? isBottomSheetShown;
  BottomSheetState({this.iconFoatingActionBotton, this.isBottomSheetShown});
}

class BottomSheetInitial extends BottomSheetState {}

class changeBottomSheetBarState extends BottomSheetState {
  // IconData? iconFoatingActionBotton;
  // bool? isBottomSheetShown;


}
