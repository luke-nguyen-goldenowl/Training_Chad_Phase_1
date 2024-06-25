import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cubit/cupertino_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/cupertino_app_bar.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/form_tab.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/modal_tab.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widget_tab.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CupertinoScreenCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cupertino Widget',
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
            BlocBuilder<CupertinoScreenCubit, CupertinoScreenState>(
              buildWhen: (previous, current) =>
                  previous.tabIndex != current.tabIndex,
              builder: (context, state) {
                Widget currentWidget = const WidgetTab();
                if (state.tabIndex == 1) {
                  currentWidget = const ModalTab();
                } else if (state.tabIndex == 2) {
                  currentWidget = const FormTab();
                }
                return Expanded(
                  flex: 8,
                  child: currentWidget,
                );
              },
            ),
            const Expanded(
              child: CupertinoAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
