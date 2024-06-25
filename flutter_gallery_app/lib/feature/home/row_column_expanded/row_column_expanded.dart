import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/cubit/row_column_expanded_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class RowColumnExpanded extends StatefulWidget {
  const RowColumnExpanded({super.key});

  @override
  _RowColumnExpandedState createState() => _RowColumnExpandedState();
}

class _RowColumnExpandedState extends State<RowColumnExpanded> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => RowColumnExpandedCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Row & Column',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xff2196F3),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: false,
        ),
        body: Column(
          children: [
            BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
                buildWhen: (p, c) =>
                    p.crossAxisAlignmentOption != c.crossAxisAlignmentOption ||
                    p.mainAxisAlignmentOption != c.mainAxisAlignmentOption ||
                    p.mainAxisSizeOption != c.mainAxisSizeOption ||
                    p.rowColumnOption != c.rowColumnOption ||
                    p.textBaselineOption != c.textBaselineOption ||
                    p.textDirectionOption != c.textDirectionOption ||
                    p.verticalDirectionOption != c.verticalDirectionOption,
                builder: (context, state) {
                  return Expanded(
                      flex: 5,
                      child: state.rowColumnOption == 1
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    color: Colors.yellow,
                                    child: Row(
                                      mainAxisSize: state.mainAxisSizeOption,
                                      mainAxisAlignment:
                                          state.mainAxisAlignmentOption,
                                      crossAxisAlignment:
                                          state.crossAxisAlignmentOption,
                                      verticalDirection:
                                          state.verticalDirectionOption,
                                      textDirection: state.textDirectionOption,
                                      textBaseline: state.textBaselineOption,
                                      children: [
                                        Image.asset(
                                            'assets/icons/row_column_icon.png',
                                            width: 50,
                                            height: 50),
                                        Image.asset(
                                            'assets/icons/row_column_icon.png',
                                            width: 100,
                                            height: 100),
                                        Image.asset(
                                            'assets/icons/row_column_icon.png',
                                            width: 50,
                                            height: 50),
                                      ],
                                    )),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.yellow,
                                  child: Column(
                                    mainAxisSize: state.mainAxisSizeOption,
                                    mainAxisAlignment:
                                        state.mainAxisAlignmentOption,
                                    crossAxisAlignment:
                                        state.crossAxisAlignmentOption,
                                    verticalDirection:
                                        state.verticalDirectionOption,
                                    textDirection: state.textDirectionOption,
                                    textBaseline: state.textBaselineOption,
                                    children: [
                                      Image.asset(
                                          'assets/icons/row_column_icon.png',
                                          width: 50,
                                          height: 50),
                                      Image.asset(
                                          'assets/icons/row_column_icon.png',
                                          width: 100,
                                          height: 100),
                                      Image.asset(
                                          'assets/icons/row_column_icon.png',
                                          width: 50,
                                          height: 50),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                }),
            Expanded(
                flex: 4,
                child: Container(
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
                  child: SingleChildScrollView(
                    child: BlocBuilder<RowColumnExpandedCubit,
                        RowColumnExpandedState>(
                      buildWhen: (p, c) =>
                          p.crossAxisAlignmentOption !=
                              c.crossAxisAlignmentOption ||
                          p.mainAxisAlignmentOption !=
                              c.mainAxisAlignmentOption ||
                          p.mainAxisSizeOption != c.mainAxisSizeOption ||
                          p.rowColumnOption != c.rowColumnOption ||
                          p.textBaselineOption != c.textBaselineOption ||
                          p.textDirectionOption != c.textDirectionOption ||
                          p.verticalDirectionOption !=
                              c.verticalDirectionOption,
                      builder: (context, state) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    title: Text('Row',
                                        style: textTheme.labelMedium),
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
                                    title: Text('Column',
                                        style: textTheme.labelMedium),
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
                            ),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.mainAxisSizeOption,
                                optionData: MainAxisSize.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setMainAxisSizeOption(
                                          value ?? MainAxisSize.min);
                                },
                                title: 'mainAxisSize'),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.mainAxisAlignmentOption,
                                optionData: MainAxisAlignment.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setMainAxisAlignmentOption(
                                          value ?? MainAxisAlignment.center);
                                },
                                title: 'mainAxisAlignment'),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.crossAxisAlignmentOption,
                                optionData: CrossAxisAlignment.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setCrossAxisAlignmentOption(
                                          value ?? CrossAxisAlignment.center);
                                },
                                title: 'crossAxisAlignment'),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.verticalDirectionOption,
                                optionData: VerticalDirection.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setVerticalDirectionOption(
                                          value ?? VerticalDirection.down);
                                },
                                title: 'verticalDirection'),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.textDirectionOption,
                                optionData: TextDirection.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setTextDirectionOption(
                                          value ?? TextDirection.ltr);
                                },
                                title: 'textDirection'),
                            OptionItem(
                                getName: (p0) => p0.name,
                                option: state.textBaselineOption,
                                optionData: TextBaseline.values,
                                onChanged: (value) {
                                  context
                                      .read<RowColumnExpandedCubit>()
                                      .setTextBaselineOption(
                                          value ?? TextBaseline.alphabetic);
                                },
                                title: 'textBaseline'),
                          ],
                        );
                      },
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
