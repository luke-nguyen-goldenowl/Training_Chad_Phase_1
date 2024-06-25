import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_cubit.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_state.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class StackAlignScreen extends StatefulWidget {
  const StackAlignScreen({Key? key}) : super(key: key);

  @override
  _StackAlignScreenState createState() => _StackAlignScreenState();
}

class _StackAlignScreenState extends State<StackAlignScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StackAlignCubit(),
      child: Scaffold(
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
                    child: BlocBuilder<StackAlignCubit, StackAlignState>(
                      buildWhen: (p, c) =>
                          p.alignmentOption['value'] !=
                              c.alignmentOption['value'] ||
                          p.textDirectionOption != c.textDirectionOption ||
                          p.stackFitOption != c.stackFitOption ||
                          p.clipOption != c.clipOption,
                      builder: (context, state) => Stack(
                        alignment: state.alignmentOption['value'],
                        textDirection: state.textDirectionOption,
                        fit: state.stackFitOption,
                        clipBehavior: state.clipOption,
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
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: BlocBuilder<StackAlignCubit, StackAlignState>(
                    buildWhen: (p, c) =>
                        p.alignmentOption['value'] !=
                            c.alignmentOption['value'] ||
                        p.textDirectionOption != c.textDirectionOption ||
                        p.stackFitOption != c.stackFitOption ||
                        p.clipOption != c.clipOption,
                    builder: (context, state) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OptionItem<Map<String, dynamic>>(
                            getName: (p0) => p0['title'] as String,
                            title: 'Alignment',
                            option: state.alignmentOption,
                            optionData: Constants.alignmentData,
                            onChanged: (value) {
                              context
                                  .read<StackAlignCubit>()
                                  .setAlignmentOption(
                                      value ?? Constants.alignmentData.first);
                            }),
                        OptionItem(
                            getName: (p0) => p0.name,
                            title: 'TextDirection',
                            option: state.textDirectionOption,
                            optionData: TextDirection.values,
                            onChanged: (value) {
                              context
                                  .read<StackAlignCubit>()
                                  .setTextDirectionOption(
                                      value ?? TextDirection.ltr);
                            }),
                        OptionItem(
                            getName: (p0) => p0.name,
                            title: 'StackFit',
                            option: state.stackFitOption,
                            optionData: StackFit.values,
                            onChanged: (value) {
                              context
                                  .read<StackAlignCubit>()
                                  .setStackFitOption(value ?? StackFit.loose);
                            }),
                        OptionItem(
                            getName: (p0) => p0.name,
                            title: 'Clip',
                            option: state.clipOption,
                            optionData: Clip.values,
                            onChanged: (value) {
                              context
                                  .read<StackAlignCubit>()
                                  .setClipOption(value ?? Clip.none);
                            }),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
