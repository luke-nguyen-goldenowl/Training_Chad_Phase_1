import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/widgets/wrap_chip_chip.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/widgets/wrap_choice_chip.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/widgets/wrap_input_chip.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/widgets/wrap_screen_config.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});


  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
  List<String> chipChipData = ['Chip', 'ActionChip', 'RawChip'];
  List<String> choiceChipData = ['Disable', 'Small', 'Large'];
  List<String> inputChipData = ['Disable', 'IOS', 'Android'];

    return BlocProvider(
      create: (context) => WrapScreenCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Wrap View',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      WrapChipChip(chipChipData: chipChipData),
                      const SizedBox(
                        height: 30,
                      ),
                      WrapChoiceChip(choiceChipData: choiceChipData),
                      const SizedBox(
                        height: 30,
                      ),
                      WrapInputChip(inputChipData: inputChipData, textTheme: textTheme),
                    ],
                  ),
                )),
            const Expanded(
              flex: 1,
              child: WrapScreenConfig(),
            ),
          ],
        ),
      ),
    );
  }
}

