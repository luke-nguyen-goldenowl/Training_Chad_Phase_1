import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_cubit.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_state.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class StackAlignConfig extends StatelessWidget {
  const StackAlignConfig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildAlignment(),
            _buildTextDirection(),
            _buildStackFit(),
            _buildClip(),
          ],
        ));
  }

  Widget _buildAlignment() {
    return BlocBuilder<StackAlignCubit, StackAlignState>(
      buildWhen: (p, c) =>
          p.alignmentOption['value'] != c.alignmentOption['value'],
      builder: (context, state) => OptionItem<Map<String, dynamic>>(
          getName: (p0) => p0['title'] as String,
          title: 'Alignment',
          option: state.alignmentOption,
          optionData: Constants.alignmentData,
          onChanged: (value) {
            context
                .read<StackAlignCubit>()
                .setAlignmentOption(value ?? Constants.alignmentData.first);
          }),
    );
  }

  Widget _buildTextDirection() {
    return BlocBuilder<StackAlignCubit, StackAlignState>(
      buildWhen: (p, c) => p.textDirectionOption != c.textDirectionOption,
      builder: (context, state) => OptionItem(
          getName: (p0) => p0.name,
          title: 'TextDirection',
          option: state.textDirectionOption,
          optionData: TextDirection.values,
          onChanged: (value) {
            context
                .read<StackAlignCubit>()
                .setTextDirectionOption(value ?? TextDirection.ltr);
          }),
    );
  }

  Widget _buildStackFit() {
    return BlocBuilder<StackAlignCubit, StackAlignState>(
      buildWhen: (p, c) => p.stackFitOption != c.stackFitOption,
      builder: (context, state) => OptionItem(
          getName: (p0) => p0.name,
          title: 'StackFit',
          option: state.stackFitOption,
          optionData: StackFit.values,
          onChanged: (value) {
            context
                .read<StackAlignCubit>()
                .setStackFitOption(value ?? StackFit.loose);
          }),
    );
  }

  Widget _buildClip() {
    return BlocBuilder<StackAlignCubit, StackAlignState>(
      buildWhen: (p, c) => p.clipOption != c.clipOption,
      builder: (context, state) => OptionItem(
          getName: (p0) => p0.name,
          title: 'Clip',
          option: state.clipOption,
          optionData: Clip.values,
          onChanged: (value) {
            context.read<StackAlignCubit>().setClipOption(value ?? Clip.none);
          }),
    );
  }
}
