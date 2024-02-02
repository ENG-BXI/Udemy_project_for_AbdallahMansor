part of 'bottom_sheet_bloc.dart';

@immutable
abstract class BottomSheetEvent {}

class changeBottomSheetBarEvent extends BottomSheetEvent {
  IconData iconFoatingActionBotton;
  bool isBottomSheetShown;
  changeBottomSheetBarEvent(
    this.iconFoatingActionBotton,
    this.isBottomSheetShown,
  );
}
