import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/cubit/container_cubit.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/widgets/container_config.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/widgets/container_content.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Container View',
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
        body: const Column(
          children: [
            Expanded(
              flex: 7,
              child: ContainerContent(),
            ),
            Expanded(
              flex: 4,
              child: ContainerConfig(),
            )
          ],
        ),
      ),
    );
  }
}
