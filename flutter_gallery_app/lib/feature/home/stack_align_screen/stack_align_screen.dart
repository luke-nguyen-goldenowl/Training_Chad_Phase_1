import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class StackAlignScreen extends StatefulWidget {
  const StackAlignScreen({Key? key}) : super(key: key);

  @override
  _StackAlignScreenState createState() => _StackAlignScreenState();
}

class _StackAlignScreenState extends State<StackAlignScreen> {
  @override
  Widget build(BuildContext context) {
    final stackAlignCubit = context.read<StackAlignCubit>();
    final stackAlignState = context.watch<StackAlignCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack & Align',
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
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: Stack(
                    alignment: stackAlignState.alignmentOption['value'],
                    textDirection: stackAlignState.textDirectionOption,
                    fit: stackAlignState.stackFitOption,
                    clipBehavior: stackAlignState.clipOption,
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: const Color.fromARGB(255, 90, 227, 94),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.orange,
                        ),
                      ),
                      // Positioned(
                      //   bottom: -50,
                      //   right: -50,
                      //   child: Container(
                      //     width: 150,
                      //     height: 150,
                      //     color: Colors.orange,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionItem<Map<String,dynamic>>(
                        getName: (p0) => p0['title'] as String,
                        title: 'Alignment',
                        option: stackAlignState.alignmentOption,
                        optionData: Constants.alignmentData,
                        onChanged: (value) {
                          stackAlignCubit.setAlignmentOption(value ?? Constants.alignmentData.first);
                        }),
                    OptionItem(
                        getName: (p0) => p0.name,
                        title: 'TextDirection',
                        option: stackAlignState.textDirectionOption,
                        optionData: TextDirection.values,
                        onChanged: (value) {
                          stackAlignCubit.setTextDirectionOption(value ?? TextDirection.ltr);
                        }),
                    OptionItem(
                        getName: (p0) => p0.name,
                        title: 'StackFit',
                        option: stackAlignState.stackFitOption,
                        optionData: StackFit.values,
                        onChanged: (value) {
                          stackAlignCubit.setStackFitOption(value ?? StackFit.loose);
                        }),
                    OptionItem(
                        getName: (p0) => p0.name,
                        title: 'Clip',
                        option: stackAlignState.clipOption,
                        optionData: Clip.values,
                        onChanged: (value) {
                          stackAlignCubit.setClipOption(value ?? Clip.none);
                        }),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
