import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
part 'button_screen_state.dart';

class ButtonScreenCubit extends Cubit<ButtonScreenState> {
  ButtonScreenCubit() : super(ButtonScreenState(
    dropdown: Constants.dropdownData.first,
    dropdownFormField: Constants.dropdownFormFieldData.first,
    options: [true,false,false],
  ));

  void updateDropdown(String value) {
    emit(state.copyWith(dropdown: value));
  }

  void updateDropdownFormField(String value) {
    emit(state.copyWith(dropdownFormField: value));
  }

  void updateOptionState(int value) {
    for (int i = 0; i < state.options.length; i++) {
      i == value ? state.options[i] = true : state.options[i] = false;
    }
    emit(state.copyWith(options: [...state.options]));
  }
}
