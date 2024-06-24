part of 'wrap_screen_cubit.dart';

class WrapScreenState {
  final bool elevation;
  final bool deleteIcon;
  final bool spacing;
  final bool avatar;
  final bool runSpacing;
  final Map<String, dynamic> borderRadius;

  WrapScreenState({
    required this.elevation,
    required this.deleteIcon,
    required this.spacing,
    required this.avatar,
    required this.runSpacing,
    required this.borderRadius,
  });

  WrapScreenState copyWith({
    bool? elevation,
    bool? deleteIcon,
    bool? spacing,
    bool? avatar,
    bool? runSpacing,
    Map<String, dynamic>? borderRadius,
  }) {
    return WrapScreenState(
      elevation: elevation ?? this.elevation,
      deleteIcon: deleteIcon ?? this.deleteIcon,
      spacing: spacing ?? this.spacing,
      avatar: avatar ?? this.avatar,
      runSpacing: runSpacing ?? this.runSpacing,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
