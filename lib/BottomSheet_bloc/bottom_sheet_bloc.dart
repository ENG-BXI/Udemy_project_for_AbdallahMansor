import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  IconData iconFoatingActionBotton = Icons.edit;
  bool isBottomSheetShown = false;

  BottomSheetBloc() : super(BottomSheetInitial()) {
    on<BottomSheetEvent>((event, emit) {
      if (event is changeBottomSheetBarEvent) {
        isBottomSheetShown = event.isBottomSheetShown;
        iconFoatingActionBotton = event.iconFoatingActionBotton;
        print(
            "the icon is $iconFoatingActionBotton , the bool is $isBottomSheetShown                in bloc");
        emit(changeBottomSheetBarState());
      }
    });
  }
}
