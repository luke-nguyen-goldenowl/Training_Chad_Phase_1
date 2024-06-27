import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/cubit/bottom_app_bar_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/widgets/bottom_app_bar_config_widget.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/widgets/bottom_navigation_bar_widget.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/widgets/floating_action_button_widget.dart';

class BottomAppBarScreen extends StatelessWidget {
  const BottomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomAppBarScreenCubit(),
      child: BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
        buildWhen: (previous, current) =>
            previous.floatActionButtonPosition['value'] !=
            current.floatActionButtonPosition['value'],
        builder: (context, state) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 240, 240, 240),
          appBar: AppBar(
            title: const Text(
              'Bottom App Bar View',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
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
          body: const BottomAppBarConfig(),
          floatingActionButton: const FloatingActionButtonWidget(),
          floatingActionButtonLocation:
              state.floatActionButtonPosition['value'],
          bottomNavigationBar: const BottomNavigationBarWidget(),
        ),
      ),
    );
  }
}
