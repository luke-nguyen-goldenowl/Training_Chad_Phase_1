import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/cubit/text_field_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/widgets/text_field_config_widget.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/widgets/text_field_widget.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return BlocProvider(
      create: (context) => TextFieldScreenCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Form view',
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
            const Expanded(
              flex: 7,
              child: TextFieldConfigWidget(),
            ),
            Expanded(
              flex: screenWidth < 400 ? 5 : 3,
              child: const TextFieldWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
