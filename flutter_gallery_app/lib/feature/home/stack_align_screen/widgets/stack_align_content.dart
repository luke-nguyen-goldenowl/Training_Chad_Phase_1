import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_cubit.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_state.dart';

class StackAlignContent extends StatelessWidget {
  const StackAlignContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}