import 'package:flutter_bloc/flutter_bloc.dart';

part 'cupertino_screen_state.dart';

class CupertinoScreenCubit extends Cubit<CupertinoScreenState> {
  CupertinoScreenCubit()
      : super(CupertinoScreenState(
          sliderValue1: 40,
          sliderValue2: 30,
          switchValue1: false,
          switchValue2: false,
          tabIndex: 0,
        ));

  void updateSlider1(double value) {
    emit(state.copyWith(sliderValue1: value));
  }

  void updateSlider2(double value) {
    emit(state.copyWith(sliderValue2: value));
  }

  void updateSwitch1(bool value) {
    emit(state.copyWith(switchValue1: value));
  }

  void updateSwitch2(bool value) {
    emit(state.copyWith(switchValue2: !state.switchValue2));
  }

  void updateTabIndex(int index) {
    emit(state.copyWith(tabIndex: index));
  }
}
