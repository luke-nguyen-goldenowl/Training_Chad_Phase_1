import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/cubit/row_column_expanded_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class RowColumnExpandedConfig extends StatelessWidget {
  const RowColumnExpandedConfig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
      child: Column(
        children: [
          _buildRowColumnOption(context),
          _buildMainAxisSizeOption(),
          _buildMainAxisAlignmentOption(),
          _buildCrossAxisAlignmentOption(),
          _buildVerticalDirectionOption(),
          _buildTextDirectionOption(),
          _buildTextBaselineOption(),
        ],
      ),
    );
  }

  Widget _buildRowColumnOption(context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) => p.rowColumnOption != c.rowColumnOption,
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text('Row', style: textTheme.labelMedium),
                  leading: Radio<int>(
                    value: 1,
                    groupValue: state.rowColumnOption,
                    onChanged: (value) {
                      context
                          .read<RowColumnExpandedCubit>()
                          .setRowColumnOption(value ?? 0);
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Column', style: textTheme.labelMedium),
                  leading: Radio<int>(
                    value: 2,
                    groupValue: state.rowColumnOption,
                    onChanged: (value) {
                      context
                          .read<RowColumnExpandedCubit>()
                          .setRowColumnOption(value ?? 0);
                    },
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget _buildMainAxisSizeOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) => p.mainAxisSizeOption != c.mainAxisSizeOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.mainAxisSizeOption,
              optionData: MainAxisSize.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setMainAxisSizeOption(value ?? MainAxisSize.min);
              },
              title: 'mainAxisSize');
        });
  }

  Widget _buildMainAxisAlignmentOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) =>
            p.mainAxisAlignmentOption != c.mainAxisAlignmentOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.mainAxisAlignmentOption,
              optionData: MainAxisAlignment.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setMainAxisAlignmentOption(
                        value ?? MainAxisAlignment.start);
              },
              title: 'mainAxisAlignment');
        });
  }

  Widget _buildCrossAxisAlignmentOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) =>
            p.crossAxisAlignmentOption != c.crossAxisAlignmentOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.crossAxisAlignmentOption,
              optionData: CrossAxisAlignment.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setCrossAxisAlignmentOption(
                        value ?? CrossAxisAlignment.center);
              },
              title: 'crossAxisAlignment');
        });
  }

  Widget _buildVerticalDirectionOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) =>
            p.verticalDirectionOption != c.verticalDirectionOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.verticalDirectionOption,
              optionData: VerticalDirection.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setVerticalDirectionOption(
                        value ?? VerticalDirection.down);
              },
              title: 'verticalDirection');
        });
  }

  Widget _buildTextDirectionOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) => p.textDirectionOption != c.textDirectionOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.textDirectionOption,
              optionData: TextDirection.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setTextDirectionOption(value ?? TextDirection.ltr);
              },
              title: 'textDirection');
        });
  }

  Widget _buildTextBaselineOption() {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
        buildWhen: (p, c) => p.textBaselineOption != c.textBaselineOption,
        builder: (context, state) {
          return OptionItem(
              getName: (p0) => p0.name,
              option: state.textBaselineOption,
              optionData: TextBaseline.values,
              onChanged: (value) {
                context
                    .read<RowColumnExpandedCubit>()
                    .setTextBaselineOption(value ?? TextBaseline.alphabetic);
              },
              title: 'textBaseline');
        });
  }
}
