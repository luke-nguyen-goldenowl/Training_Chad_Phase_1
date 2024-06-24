part of 'bottom_app_bar_screen_cubit.dart';

class BottomAppBarScreenState{
  final bool floatActionButton;
  final bool notch;
  final Map<String,dynamic> floatActionButtonPosition;

  BottomAppBarScreenState({
    required this.floatActionButton,
    required this.notch,
    required this.floatActionButtonPosition,
  });

  BottomAppBarScreenState copyWith({
    bool? floatActionButton,
    bool? notch,
    Map<String,dynamic>? floatActionButtonPosition,
  }) {
    return BottomAppBarScreenState(
      floatActionButton: floatActionButton ?? this.floatActionButton,
      notch: notch ?? this.notch,
      floatActionButtonPosition: floatActionButtonPosition ?? this.floatActionButtonPosition,
    );
  }
}