import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cubit/cupertino_screen_cubit.dart';

  Widget secondSwitchWidget() {
    return BlocBuilder<CupertinoScreenCubit, CupertinoScreenState>(
      buildWhen: (previous, current) =>
          previous.switchValue2 != current.switchValue2,
      builder: (context, state) => Switch.adaptive(
          applyCupertinoTheme: true,
          value: state.switchValue2,
          onChanged: (value) {
            context.read<CupertinoScreenCubit>().updateSwitch2(value);
          }),
    );
  }