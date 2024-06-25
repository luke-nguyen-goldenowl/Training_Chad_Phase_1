// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'container_cubit.dart';

class ContainerState {
  final bool borderOption;
  final Map<String, dynamic> borderRadiusOption;
  final bool boxShadowOption;
  final Map<String, dynamic> backgroundOption;
  final BlendMode blendModeOption;

  ContainerState({
    required this.borderOption,
    required this.borderRadiusOption,
    required this.boxShadowOption,
    required this.backgroundOption,
    required this.blendModeOption,
  });

  ContainerState copyWith({
    bool? borderOption,
    Map<String, dynamic>? borderRadiusOption,
    bool? boxShadowOption,
    Map<String, dynamic>? backgroundOption,
    BlendMode? blendModeOption,
  }) {
    return ContainerState(
      borderOption: borderOption ?? this.borderOption,
      borderRadiusOption: borderRadiusOption ?? this.borderRadiusOption,
      boxShadowOption: boxShadowOption ?? this.boxShadowOption,
      backgroundOption: backgroundOption ?? this.backgroundOption,
      blendModeOption: blendModeOption ?? this.blendModeOption,
    );
  }
}
