import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/cubit/stack_align_cubit.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/widgets/stack_align_config.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/widgets/stack_align_content.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
            const Expanded(flex: 5, child: StackAlignContent()),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                flex: screenWidth < 400 ? 3 : 4,
                child: const StackAlignConfig()),
          ],
        ),
      ),
    );
  }
}
