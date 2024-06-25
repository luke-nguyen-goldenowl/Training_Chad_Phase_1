import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/cubit/bottom_app_bar_screen_cubit.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppBarScreenCubit, BottomAppBarScreenState>(
      buildWhen: (previous, current) => previous.notch != current.notch,
      builder: (context, state) => BottomAppBar(
        shape: state.notch ? const CircularNotchedRectangle() : null,
        notchMargin: 5.0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 26,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 26,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  size: 26,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
