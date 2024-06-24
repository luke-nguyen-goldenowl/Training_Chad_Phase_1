import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';

part 'wrap_screen_state.dart';

class WrapScreenCubit extends Cubit<WrapScreenState> {
  WrapScreenCubit()
      : super(
          WrapScreenState(
            elevation: false,
            deleteIcon: false,
            spacing: false,
            avatar: false,
            runSpacing: false,
            borderRadius: Constants.borderTypeData.first,
          ),
        );

  void toggleElevation() {
    emit(state.copyWith(elevation: !state.elevation));
  }

  void toggleDeleteIcon() {
    emit(state.copyWith(deleteIcon: !state.deleteIcon));
  }

  void toggleSpacing() {
    emit(state.copyWith(spacing: !state.spacing));
  }

  void toggleAvatar() {
    emit(state.copyWith(avatar: !state.avatar));
  }

  void toggleRunSpacing() {
    emit(state.copyWith(runSpacing: !state.runSpacing));
  }

  void setBorderRadius(Map<String, dynamic> borderRadius) {
    emit(state.copyWith(borderRadius: borderRadius));
  }
}
