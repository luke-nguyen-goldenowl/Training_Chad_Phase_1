import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/cubit/container_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class ContainerConfig extends StatelessWidget {
  const ContainerConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBorderOption(),
            _buildBorderRadiusOption(),
            _buildBoxShadowOption(),
            _buildBackgroundOption(),
            _buildBlendModeOption(),
          ],
        ),
      ),
    );
  }

  Widget _buildBorderOption() {
    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) => p.borderOption != c.borderOption,
      builder: (context, state) => SwitchItem(
        title: 'Border',
        option: state.borderOption,
        onChanged: (value) {
          context.read<ContainerCubit>().setBorderOption(value);
        },
      ),
    );
  }

  Widget _buildBorderRadiusOption() {
    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) =>
          p.borderRadiusOption['value'] != c.borderRadiusOption['value'],
      builder: (context, state) => OptionItem<Map<String, dynamic>>(
        getName: (p0) {
          return p0['title'].toString();
        },
        title: 'BorderRadius',
        option: state.borderRadiusOption,
        optionData: Constants.borderRadiusData,
        onChanged: (value) {
          context.read<ContainerCubit>().setBorderRadiusOption(value ?? {});
        },
      ),
    );
  }

  Widget _buildBoxShadowOption() {
    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) => p.boxShadowOption != c.boxShadowOption,
      builder: (context, state) => SwitchItem(
        title: 'BoxShadow',
        option: state.boxShadowOption,
        onChanged: (value) {
          context.read<ContainerCubit>().setBoxShadowOption(value);
        },
      ),
    );
  }

  Widget _buildBackgroundOption() {
    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) =>
          p.backgroundOption['value'] != c.backgroundOption['value'],
      builder: (context, state) => OptionItem<Map<String, dynamic>>(
        getName: (p0) {
          return p0['title'].toString();
        },
        title: 'Background',
        option: state.backgroundOption,
        optionData: Constants.backgroundData,
        onChanged: (value) {
          context.read<ContainerCubit>().setBackgroundOption(value ?? {});
        },
      ),
    );
  }

  Widget _buildBlendModeOption() {
    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) => p.blendModeOption != c.blendModeOption,
      builder: (context, state) => OptionItem<BlendMode>(
        getName: (p0) {
          return p0.name;
        },
        title: 'BlendMode',
        option: state.blendModeOption,
        optionData: BlendMode.values,
        onChanged: (value) {
          context
              .read<ContainerCubit>()
              .setBlendModeOption(value ?? BlendMode.srcOver);
        },
      ),
    );
  }
}
