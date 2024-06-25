import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cubit/cupertino_screen_cubit.dart';

class CupertinoAppBar extends StatelessWidget {
  const CupertinoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CupertinoScreenCubit, CupertinoScreenState>(
      buildWhen: (previous, current) => previous.tabIndex != current.tabIndex,
      builder: (context, state) => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          height: 60,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Widget',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.collections),
              label: 'Modal',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
              label: 'Form',
            ),
          ],
          iconSize: 32,
          activeColor: const Color(0xff2196F3),
          currentIndex: state.tabIndex,
          onTap: (value) {
            context.read<CupertinoScreenCubit>().updateTabIndex(value);
          },
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return Container(
                color: Colors.white,
              );
            },
          );
        },
      ),
    );
  }
}
