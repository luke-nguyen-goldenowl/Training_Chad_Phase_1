import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'row_column_expanded_state.dart';

class RowColumnExpandedCubit extends Cubit<RowColumnExpandedState> {
  RowColumnExpandedCubit()
      : super(RowColumnExpandedState(
          rowColumnOption: 1,
          mainAxisSizeOption: MainAxisSize.min,
          mainAxisAlignmentOption: MainAxisAlignment.center,
          crossAxisAlignmentOption: CrossAxisAlignment.center,
          verticalDirectionOption: VerticalDirection.down,
          textDirectionOption: TextDirection.ltr,
          textBaselineOption: TextBaseline.alphabetic,
        ));

  void setRowColumnOption(int value) {
    emit(state.copyWith(rowColumnOption: value));
  }

  void setMainAxisSizeOption(MainAxisSize value) {
    emit(state.copyWith(mainAxisSizeOption: value));
  }

  void setMainAxisAlignmentOption(MainAxisAlignment value) {
    emit(state.copyWith(mainAxisAlignmentOption: value));
  }

  void setCrossAxisAlignmentOption(CrossAxisAlignment value) {
    emit(state.copyWith(crossAxisAlignmentOption: value));
  }

  void setVerticalDirectionOption(VerticalDirection value) {
    emit(state.copyWith(verticalDirectionOption: value));
  }

  void setTextDirectionOption(TextDirection value) {
    emit(state.copyWith(textDirectionOption: value));
  }

  void setTextBaselineOption(TextBaseline value) {
    emit(state.copyWith(textBaselineOption: value));
  }
}
