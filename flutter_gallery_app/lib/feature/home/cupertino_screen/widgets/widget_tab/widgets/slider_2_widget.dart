import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cubit/cupertino_screen_cubit.dart';

  Widget SecondSliderWidget() {
    return BlocBuilder<CupertinoScreenCubit, CupertinoScreenState>(
      buildWhen: (previous, current) =>
          previous.sliderValue2 != current.sliderValue2,
      builder: (context, state) => SizedBox(
        width: double.infinity,
        child: CupertinoSlider(
          key: const Key('slider2'),
          value: state.sliderValue2,
          divisions: 10,
          max: 100,
          activeColor: const Color(0xff2196F3),
          thumbColor: CupertinoColors.white,
          onChanged: (double value) {
            context.read<CupertinoScreenCubit>().updateSlider2(value);
          },
        ),
      ),
    );
  }