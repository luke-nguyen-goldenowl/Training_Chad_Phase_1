part of 'button_screen_cubit.dart';

class ButtonScreenState {
  final String dropdown;
  final String dropdownFormField;
  final List<bool> options;

  ButtonScreenState({
    required this.dropdown,
    required this.dropdownFormField,
    required this.options,
  });

  ButtonScreenState copyWith({
    String? dropdown,
    String? dropdownFormField,
    List<bool>? options,
  }) {
    return ButtonScreenState(
      dropdown: dropdown ?? this.dropdown,
      dropdownFormField: dropdownFormField ?? this.dropdownFormField,
      options: options ?? this.options,
    );
  }
}
