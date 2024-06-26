import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class WrapScreenConfig extends StatelessWidget {
  const WrapScreenConfig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                _buildElevation(),
                _buildDeleteIcon(),
                _buildSpacing(),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAvatar(),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _buildBorderRadius()),
                _buildRunSpacing(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildElevation() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.elevation != c.elevation,
        builder: (context, state) {
          return SwitchItem(
            title: 'elevation',
            option: state.elevation,
            onChanged: (value) {
              context.read<WrapScreenCubit>().toggleElevation();
            },
          );
        });
  }

  Widget _buildDeleteIcon() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.deleteIcon != c.deleteIcon,
        builder: (context, state) {
          return SwitchItem(
            title: 'deleteIcon',
            option: state.deleteIcon,
            onChanged: (value) {
              context.read<WrapScreenCubit>().toggleDeleteIcon();
            },
          );
        });
  }

  Widget _buildSpacing() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.spacing != c.spacing,
        builder: (context, state) {
          return SwitchItem(
            title: 'spacing',
            option: state.spacing,
            onChanged: (value) {
              context.read<WrapScreenCubit>().toggleSpacing();
            },
          );
        });
  }

  Widget _buildAvatar() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.avatar != c.avatar,
        builder: (context, state) {
          return SwitchItem(
            title: 'avatar',
            option: state.avatar,
            onChanged: (value) {
              context.read<WrapScreenCubit>().toggleAvatar();
            },
          );
        });
  }

  Widget _buildBorderRadius() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.borderRadius != c.borderRadius,
        builder: (context, state) {
          return OptionItem(
            option: state.borderRadius,
            optionData: Constants.borderTypeData,
            onChanged: (value) {
              context
                  .read<WrapScreenCubit>()
                  .setBorderRadius(value ?? Constants.borderTypeData.first);
            },
            title: '',
            getName: ((p0) => p0['title']),
          );
        });
  }

  Widget _buildRunSpacing() {
    return BlocBuilder<WrapScreenCubit, WrapScreenState>(
        buildWhen: (p, c) => p.runSpacing != c.runSpacing,
        builder: (context, state) {
          return SwitchItem(
            title: 'runSpacing',
            option: state.runSpacing,
            onChanged: (value) {
              context.read<WrapScreenCubit>().toggleRunSpacing();
            },
          );
        });
  }
}
