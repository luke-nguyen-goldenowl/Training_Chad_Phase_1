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
    final rowColumnExpandedCubit = context.read<RowColumnExpandedCubit>();
    final rowColumneExpandedState =
        context.watch<RowColumnExpandedCubit>().state;

    return Scaffold(
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
          Expanded(
              flex: 5,
              child: rowColumneExpandedState.rowColumnOption == 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            color: Colors.yellow,
                            child: Row(
                              mainAxisSize:
                                  rowColumneExpandedState.mainAxisSizeOption,
                              mainAxisAlignment: rowColumneExpandedState
                                  .mainAxisAlignmentOption,
                              crossAxisAlignment: rowColumneExpandedState
                                  .crossAxisAlignmentOption,
                              verticalDirection: rowColumneExpandedState
                                  .verticalDirectionOption,
                              textDirection:
                                  rowColumneExpandedState.textDirectionOption,
                              textBaseline:
                                  rowColumneExpandedState.textBaselineOption,
                              children: [
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 50, height: 50),
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 100, height: 100),
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 50, height: 50),
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
                            mainAxisSize:
                                rowColumneExpandedState.mainAxisSizeOption,
                            mainAxisAlignment:
                                rowColumneExpandedState.mainAxisAlignmentOption,
                            crossAxisAlignment: rowColumneExpandedState
                                .crossAxisAlignmentOption,
                            verticalDirection:
                                rowColumneExpandedState.verticalDirectionOption,
                            textDirection:
                                rowColumneExpandedState.textDirectionOption,
                            textBaseline:
                                rowColumneExpandedState.textBaselineOption,
                            children: [
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 100, height: 100),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                            ],
                          ),
                        ),
                      ],
                    )),
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              title: Text('Row', style: textTheme.labelMedium),
                              leading: Radio<int>(
                                value: 1,
                                groupValue:
                                    rowColumneExpandedState.rowColumnOption,
                                onChanged: (value) {
                                  rowColumnExpandedCubit
                                      .setRowColumnOption(value ?? 0);
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title:
                                  Text('Column', style: textTheme.labelMedium),
                              leading: Radio<int>(
                                value: 2,
                                groupValue:
                                    rowColumneExpandedState.rowColumnOption,
                                onChanged: (value) {
                                  rowColumnExpandedCubit
                                      .setRowColumnOption(value ?? 0);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option: rowColumneExpandedState.mainAxisSizeOption,
                          optionData: MainAxisSize.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setMainAxisSizeOption(
                                value ?? MainAxisSize.min);
                          },
                          title: 'mainAxisSize'),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option:
                              rowColumneExpandedState.mainAxisAlignmentOption,
                          optionData: MainAxisAlignment.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setMainAxisAlignmentOption(
                                value ?? MainAxisAlignment.center);
                          },
                          title: 'mainAxisAlignment'),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option:
                              rowColumneExpandedState.crossAxisAlignmentOption,
                          optionData: CrossAxisAlignment.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setCrossAxisAlignmentOption(
                                value ?? CrossAxisAlignment.center);
                          },
                          title: 'crossAxisAlignment'),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option:
                              rowColumneExpandedState.verticalDirectionOption,
                          optionData: VerticalDirection.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setVerticalDirectionOption(
                                value ?? VerticalDirection.down);
                          },
                          title: 'verticalDirection'),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option: rowColumneExpandedState.textDirectionOption,
                          optionData: TextDirection.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setTextDirectionOption(
                                value ?? TextDirection.ltr);
                          },
                          title: 'textDirection'),
                      OptionItem(
                          getName: (p0) => p0.name,
                          option: rowColumneExpandedState.textBaselineOption,
                          optionData: TextBaseline.values,
                          onChanged: (value) {
                            rowColumnExpandedCubit.setTextBaselineOption(
                                value ?? TextBaseline.alphabetic);
                          },
                          title: 'textBaseline'),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
