part of 'text_field_screen_cubit.dart';

class TextFieldScreenState {
  final bool showHintText;
  final bool showLabelText;
  final bool showHelpText;
  final bool showErrorText;
  final bool showCounterText;
  final bool showPrefix;
  final bool showSuffix;
  final bool showPrefixIcon;

  TextFieldScreenState({
    required this.showHintText,
    required this.showLabelText,
    required this.showHelpText,
    required this.showErrorText,
    required this.showCounterText,
    required this.showPrefix,
    required this.showSuffix,
    required this.showPrefixIcon,
  });

  TextFieldScreenState copyWith({
    bool? showHintText,
    bool? showLabelText,
    bool? showHelpText,
    bool? showErrorText,
    bool? showCounterText,
    bool? showPrefix,
    bool? showSuffix,
    bool? showPrefixIcon,
  }) {
    return TextFieldScreenState(
      showHintText: showHintText ?? this.showHintText,
      showLabelText: showLabelText ?? this.showLabelText,
      showHelpText: showHelpText ?? this.showHelpText,
      showErrorText: showErrorText ?? this.showErrorText,
      showCounterText: showCounterText ?? this.showCounterText,
      showPrefix: showPrefix ?? this.showPrefix,
      showSuffix: showSuffix ?? this.showSuffix,
      showPrefixIcon: showPrefixIcon ?? this.showPrefixIcon,
    );
  }
}
