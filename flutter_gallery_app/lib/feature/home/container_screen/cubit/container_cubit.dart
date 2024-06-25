import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';

part 'container_state.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit() : super(ContainerState(
    borderOption: false,
    borderRadiusOption: Constants.borderRadiusData.first,
    boxShadowOption: false,
    backgroundOption: Constants.backgroundData.first,
    blendModeOption: BlendMode.srcOver,
  ));

  static ContainerCubit get(context) => BlocProvider.of(context);

  void setBorderOption(bool value) {
    emit(state.copyWith(borderOption: value));
  }

  void setBorderRadiusOption(Map<String, dynamic> value) {
    emit(state.copyWith(borderRadiusOption: value));
  }

  void setBoxShadowOption(bool value) {
    emit(state.copyWith(boxShadowOption: value));
  }

  void setBackgroundOption(Map<String, dynamic> value) {
    emit(state.copyWith(backgroundOption: value));
  }

  void setBlendModeOption(BlendMode value) {
    emit(state.copyWith(blendModeOption: value));
  }
}