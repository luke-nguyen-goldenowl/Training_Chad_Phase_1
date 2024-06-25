import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';

part 'bottom_app_bar_screen_state.dart';

class BottomAppBarScreenCubit extends Cubit<BottomAppBarScreenState> {
  BottomAppBarScreenCubit()
      : super(
          BottomAppBarScreenState(
            floatActionButton: true,
            notch: true,
            floatActionButtonPosition:
                Constants.floatActionButtonPositionData.first,
          ),
        );

  void setFloatActionButton() {
    emit(state.copyWith(floatActionButton: !state.floatActionButton));
  }

  void setNotch() {
    emit(state.copyWith(notch: !state.notch));
  }

  void setFloatActionButtonPosition(Map<String, dynamic> value) {
    emit(state.copyWith(floatActionButtonPosition: value));
  }
}
