import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/cubit/bottom_app_bar_screen_cubit.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
      buildWhen: (previous, current) =>
          previous.floatActionButton != current.floatActionButton,
      builder: (context, state) => state.floatActionButton
          ? SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xff2196F3),
                child: const Icon(
                  Icons.add,
                  size: 28,
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
