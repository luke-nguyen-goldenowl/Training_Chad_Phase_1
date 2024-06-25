// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cupertino_screen_cubit.dart';

class CupertinoScreenState {
  final double sliderValue1;
  final double sliderValue2;
  final bool switchValue1;
  final bool switchValue2;

  CupertinoScreenState({
    required this.sliderValue1,
    required this.sliderValue2,
    required this.switchValue1,
    required this.switchValue2,
  });

  CupertinoScreenState copyWith({
    double? sliderValue1,
    double? sliderValue2,
    bool? switchValue1,
    bool? switchValue2,
  }) {
    return CupertinoScreenState(
      sliderValue1: sliderValue1 ?? this.sliderValue1,
      sliderValue2: sliderValue2 ?? this.sliderValue2,
      switchValue1: switchValue1 ?? this.switchValue1,
      switchValue2: switchValue2 ?? this.switchValue2,
    );
  }
}
