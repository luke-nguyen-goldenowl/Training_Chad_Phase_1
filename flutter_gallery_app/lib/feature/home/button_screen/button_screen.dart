import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/black_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/cupertino_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/dropdown_button_form_field_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/dropdown_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/elevalated_button_icon_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/elevalated_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/group_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/icon_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/material_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/outlined_button_icon_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/outlined_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/raw_material_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/text_button_icon_widget.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/text_button_widget.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonScreenCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Button View',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            backgroundColor: const Color(0xff2196F3),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff1AF9FF),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_container');
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_container');
                },
              ),
            ],
          ),
          body: const Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonWidget(),
                  SizedBox(height: 10),
                  DropdownFormFieldButton(),
                  BlackButtonWidget(),
                  SizedBox(height: 5),
                  ElevalatedButtonWidget(),
                  ElevalatedButtonIconWidget(),
                  TextButtonWidget(),
                  TextButtonIconWidget(),
                  OutlinedButtonWidget(),
                  OutlinedButtonIconWidget(),
                  SizedBox(height: 15),
                  CupertinoButtonWidget(),
                  SizedBox(height: 20),
                  MaterialButtonWidget(),
                  SizedBox(height: 10),
                  RawMaterialButtonWidget(),
                  SizedBox(height: 20),
                  GroupButtonWidget(),
                  SizedBox(height: 40),
                  IconButtonWidget(),
                ],
              ),
            ),
          )),
    );
  }
}
