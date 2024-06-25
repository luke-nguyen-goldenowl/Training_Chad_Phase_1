import 'package:flutter/material.dart';

class StackAlignState{
  final Map<String,dynamic> alignmentOption;
  final TextDirection textDirectionOption;
  final StackFit stackFitOption;
  final Clip clipOption;

  StackAlignState({
    required this.alignmentOption,
    required this.textDirectionOption,
    required this.stackFitOption,
    required this.clipOption,
  });

  StackAlignState copyWith({
    Map<String,dynamic>? alignmentOption,
    TextDirection? textDirectionOption,
    StackFit? stackFitOption,
    Clip? clipOption,
  }) {
    return StackAlignState(
      alignmentOption: alignmentOption ?? this.alignmentOption,
      textDirectionOption: textDirectionOption ?? this.textDirectionOption,
      stackFitOption: stackFitOption ?? this.stackFitOption,
      clipOption: clipOption ?? this.clipOption,
    );
  }

}