import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_state.dart';

class StackAlignCubit extends Cubit<StackAlignState>{
  StackAlignCubit() : super(StackAlignState(
    alignmentOption: Constants.alignmentData.first,
    textDirectionOption: TextDirection.ltr,
    stackFitOption: StackFit.loose,
    clipOption: Clip.none,
  ));

  void setAlignmentOption(Map<String,dynamic> alignment){
    emit(state.copyWith(alignmentOption: alignment));
  }

  void setTextDirectionOption(TextDirection textDirection){
    emit(state.copyWith(textDirectionOption: textDirection));
  }

  void setStackFitOption(StackFit stackFit){
    emit(state.copyWith(stackFitOption: stackFit));
  }

  void setClipOption(Clip clip){
    emit(state.copyWith(clipOption: clip));
  }
}