import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  _WrapScreenState createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  List<String> chipChipData = ['Chip', 'ActionChip', 'RawChip'];
  List<String> choiceChipData = ['Disable', 'Small', 'Large'];
  List<String> inputChipData = ['Disable', 'IOS', 'Android'];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final wrapScreenCubit = context.read<WrapScreenCubit>();
    final wrapScreenState = context.watch<WrapScreenCubit>().state;

    return Scaffold(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Chip Chip',
                        style: (textTheme.labelMedium ?? const TextStyle())
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: wrapScreenState.spacing ? 20 : 0,
                      runSpacing: wrapScreenState.runSpacing ? 20 : 0,
                      children: chipChipData
                          .map(
                            (e) => Chip(
                              onDeleted:
                                  wrapScreenState.deleteIcon ? () {} : null,
                              avatar: wrapScreenState.avatar
                                  ? const Icon(Icons.account_circle)
                                  : null,
                              elevation: wrapScreenState.elevation ? 5 : 0,
                              shape: wrapScreenState.borderRadius['value'],
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              label: Text(
                                e,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Choice Chip',
                        style: (textTheme.labelMedium ?? const TextStyle())
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: wrapScreenState.spacing ? 20 : 0,
                      runSpacing: wrapScreenState.runSpacing ? 20 : 0,
                      children: choiceChipData
                          .map((e) => ChoiceChip(
                                avatar: wrapScreenState.avatar
                                    ? const Icon(Icons.account_circle)
                                    : null,
                                elevation: wrapScreenState.elevation ? 5 : 0,
                                shape: wrapScreenState.borderRadius['value'],
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                                selectedColor:
                                    const Color.fromARGB(255, 173, 215, 246),
                                onSelected:
                                    e != 'Disable' ? (bool selected) {} : null,
                                selected: e == 'Small',
                                disabledColor: const Color(0xffEEEEEE),
                                backgroundColor:
                                    e == 'Disable' ? Colors.grey[300] : null,
                                label: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: e == 'Small'
                                        ? const Color.fromARGB(255, 0, 140, 255)
                                        : Colors.black,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Input Chip',
                        style: (textTheme.labelMedium ?? const TextStyle())
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: wrapScreenState.spacing ? 20 : 0,
                      runSpacing: wrapScreenState.runSpacing ? 20 : 0,
                      children: inputChipData
                          .map((e) => InputChip(
                                onDeleted:
                                    wrapScreenState.deleteIcon ? () {} : null,
                                avatar: wrapScreenState.avatar
                                    ? const Icon(Icons.account_circle)
                                    : null,
                                elevation: wrapScreenState.elevation ? 5 : 0,
                                onSelected:
                                    e != 'Disable' ? (bool selected) {} : null,
                                shape: wrapScreenState.borderRadius['value'],
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                                disabledColor: const Color(0xffEEEEEE),
                                selected: e == 'Android',
                                label: Text(
                                  e,
                                  style: (textTheme.labelMedium ??
                                          const TextStyle())
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SwitchItem(
                          title: 'elevation',
                          option: wrapScreenState.elevation,
                          onChanged: (value) {
                            wrapScreenCubit.toggleElevation();
                          },
                        ),
                        SwitchItem(
                          title: 'deleteIcon',
                          option: wrapScreenState.deleteIcon,
                          onChanged: (value) {
                            wrapScreenCubit.toggleDeleteIcon();
                          },
                        ),
                        SwitchItem(
                          title: 'spacing',
                          option: wrapScreenState.spacing,
                          onChanged: (value) {
                            wrapScreenCubit.toggleSpacing();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SwitchItem(
                          title: 'avatar',
                          option: wrapScreenState.avatar,
                          onChanged: (value) {
                            wrapScreenCubit.toggleAvatar();
                          },
                        ),
                        OptionItem(
                          option: wrapScreenState.borderRadius,
                          optionData: Constants.borderTypeData,
                          onChanged: (value) {
                            wrapScreenCubit.setBorderRadius(
                                value ?? Constants.borderTypeData.first);
                          },
                          title: '',
                          getName: ((p0) => p0['title']),
                        ),
                        SwitchItem(
                          title: 'runSpacing',
                          option: wrapScreenState.runSpacing,
                          onChanged: (value) {
                            wrapScreenCubit.toggleRunSpacing();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
