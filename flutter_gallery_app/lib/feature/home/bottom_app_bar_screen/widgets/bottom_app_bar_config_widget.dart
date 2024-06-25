import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/cubit/bottom_app_bar_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class BottomAppBarConfig extends StatelessWidget {
  const BottomAppBarConfig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Column(
            children: [
              _buildFloatActionButton(),
              _buildNotch(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Text(
                'Float Action Button Position',
                style: (textTheme.labelMedium ?? const TextStyle())
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        _buildFloatActionButtonPosition(context),
      ],
    );
  }

  Widget _buildFloatActionButton() {
    return BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
      buildWhen: (previous, current) =>
          previous.floatActionButton != current.floatActionButton,
      builder: (context, state) => SwitchItem(
          title: 'Float Action Button',
          option: state.floatActionButton,
          onChanged: (value) {
            context.read<BottomAppBarScreenCubit>().setFloatActionButton();
          }),
    );
  }

  Widget _buildNotch() {
    return BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
      buildWhen: (previous, current) => previous.notch != current.notch,
      builder: (context, state) => SwitchItem(
          title: 'Notch',
          option: state.notch,
          onChanged: (value) {
            context.read<BottomAppBarScreenCubit>().setNotch();
          }),
    );
  }

  Widget _buildFloatActionButtonPosition(context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
      buildWhen: (previous, current) =>
          previous.floatActionButtonPosition !=
          current.floatActionButtonPosition,
      builder: (context, state) => Column(
        children: [
          ...Constants.floatActionButtonPositionData.map(
            (e) => RadioListTile<Map<String, dynamic>>(
              activeColor: const Color(0xff2196F3),
              title: Text(
                e['title'] as String,
                style: textTheme.labelMedium,
              ),
              value: e,
              groupValue: state.floatActionButtonPosition,
              onChanged: (Map<String, dynamic>? value) {
                context
                    .read<BottomAppBarScreenCubit>()
                    .setFloatActionButtonPosition(value!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
