import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_field_screen_state.dart';

class TextFieldScreenCubit extends Cubit<TextFieldScreenState> {
  TextFieldScreenCubit()
      : super(
          TextFieldScreenState(
            showHintText: true,
            showLabelText: true,
            showHelpText: false,
            showErrorText: true,
            showCounterText: false,
            showPrefix: false,
            showSuffix: false,
            showPrefixIcon: false,
          ),
        );

  void toggleHintText(bool value) {
    emit(state.copyWith(showHintText: value));
  }

  void toggleLabelText(bool value) {
    emit(state.copyWith(showLabelText: value));
  }

  void toggleHelpText(bool value) {
    emit(state.copyWith(showHelpText: value));
  }

  void toggleErrorText(bool value) {
    emit(state.copyWith(showErrorText: value));
  }

  void toggleCounterText(bool value) {
    emit(state.copyWith(showCounterText: value));
  }

  void togglePrefix(bool value) {
    emit(state.copyWith(showPrefix: value));
  }

  void toggleSuffix(bool value) {
    emit(state.copyWith(showSuffix: value));
  }

  void togglePrefixIcon(bool value) {
    emit(state.copyWith(showPrefixIcon: value));
  }
}