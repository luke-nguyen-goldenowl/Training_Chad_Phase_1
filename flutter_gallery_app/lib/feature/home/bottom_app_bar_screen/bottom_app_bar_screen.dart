import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/cubit/bottom_app_bar_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class BottomAppBarScreen extends StatefulWidget {
  const BottomAppBarScreen({Key? key}) : super(key: key);

  @override
  _BottomAppBarScreenState createState() => _BottomAppBarScreenState();
}

class _BottomAppBarScreenState extends State<BottomAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bottomAppBarScreenCubit = context.read<BottomAppBarScreenCubit>();
    final bottomAppBarScreenState =
        context.watch<BottomAppBarScreenCubit>().state;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        title: const Text(
          'Bottom App Bar View',
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              children: [
                SwitchItem(
                    title: 'Float Action Button',
                    option: bottomAppBarScreenState.floatActionButton,
                    onChanged: (value) {
                      bottomAppBarScreenCubit.setFloatActionButton();
                    }),
                SwitchItem(
                    title: 'Notch',
                    option: bottomAppBarScreenState.notch,
                    onChanged: (value) {
                      bottomAppBarScreenCubit.setNotch();
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Text(
                  'Float Action Button Position',
                  style: (textTheme.labelMedium ?? const TextStyle())
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          ...Constants.floatActionButtonPositionData.map(
            (e) => RadioListTile<Map<String, dynamic>>(
              activeColor: const Color(0xff2196F3),
              title: Text(
                e['title'] as String,
                style: textTheme.labelMedium,
              ),
              value: e,
              groupValue: bottomAppBarScreenState.floatActionButtonPosition,
              onChanged: (Map<String, dynamic>? value) {
                bottomAppBarScreenCubit.setFloatActionButtonPosition(value!);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: bottomAppBarScreenState.floatActionButton
          ? SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xff2196F3),
                child: const Icon(
                  Icons.add,
                  size: 28,
                ),
              ),
            )
          : null,
      floatingActionButtonLocation:
          bottomAppBarScreenState.floatActionButtonPosition['value'],
      bottomNavigationBar: BottomAppBar(
        shape: bottomAppBarScreenState.notch
            ? const CircularNotchedRectangle()
            : null,
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
