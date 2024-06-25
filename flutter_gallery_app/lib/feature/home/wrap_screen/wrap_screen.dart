import 'package:flutter/material.dart';
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
                      BlocBuilder<WrapScreenCubit, WrapScreenState>(
                        buildWhen: (p, c) =>
                            p.avatar != c.avatar ||
                            p.borderRadius != c.borderRadius ||
                            p.deleteIcon != c.deleteIcon ||
                            p.elevation != c.elevation ||
                            p.runSpacing != c.runSpacing ||
                            p.spacing != c.spacing,
                        builder: (context, state) => Wrap(
                          spacing: state.spacing ? 20 : 0,
                          runSpacing: state.runSpacing ? 20 : 0,
                          children: chipChipData
                              .map(
                                (e) => Chip(
                                  onDeleted: state.deleteIcon ? () {} : null,
                                  avatar: state.avatar
                                      ? const Icon(Icons.account_circle)
                                      : null,
                                  elevation: state.elevation ? 5 : 0,
                                  shape: state.borderRadius['value'],
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
                      BlocBuilder<WrapScreenCubit, WrapScreenState>(
                        buildWhen: (p, c) =>
                            p.avatar != c.avatar ||
                            p.borderRadius != c.borderRadius ||
                            p.deleteIcon != c.deleteIcon ||
                            p.elevation != c.elevation ||
                            p.runSpacing != c.runSpacing ||
                            p.spacing != c.spacing,
                        builder: (context, state) => Wrap(
                          spacing: state.spacing ? 20 : 0,
                          runSpacing: state.runSpacing ? 20 : 0,
                          children: choiceChipData
                              .map((e) => ChoiceChip(
                                    avatar: state.avatar
                                        ? const Icon(Icons.account_circle)
                                        : null,
                                    elevation: state.elevation ? 5 : 0,
                                    shape: state.borderRadius['value'],
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    selectedColor: const Color.fromARGB(
                                        255, 173, 215, 246),
                                    onSelected: e != 'Disable'
                                        ? (bool selected) {}
                                        : null,
                                    selected: e == 'Small',
                                    disabledColor: const Color(0xffEEEEEE),
                                    backgroundColor: e == 'Disable'
                                        ? Colors.grey[300]
                                        : null,
                                    label: Text(
                                      e,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: e == 'Small'
                                            ? const Color.fromARGB(
                                                255, 0, 140, 255)
                                            : Colors.black,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
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
                      BlocBuilder<WrapScreenCubit, WrapScreenState>(
                        buildWhen: (p, c) =>
                            p.avatar != c.avatar ||
                            p.borderRadius != c.borderRadius ||
                            p.deleteIcon != c.deleteIcon ||
                            p.elevation != c.elevation ||
                            p.runSpacing != c.runSpacing ||
                            p.spacing != c.spacing,
                        builder: (context, state) => Wrap(
                          spacing: state.spacing ? 20 : 0,
                          runSpacing: state.runSpacing ? 20 : 0,
                          children: inputChipData
                              .map((e) => InputChip(
                                    onDeleted: state.deleteIcon ? () {} : null,
                                    avatar: state.avatar
                                        ? const Icon(Icons.account_circle)
                                        : null,
                                    elevation: state.elevation ? 5 : 0,
                                    onSelected: e != 'Disable'
                                        ? (bool selected) {}
                                        : null,
                                    shape: state.borderRadius['value'],
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    disabledColor: const Color(0xffEEEEEE),
                                    selected: e == 'Android',
                                    label: Text(
                                      e,
                                      style: (textTheme.labelMedium ??
                                              const TextStyle())
                                          .copyWith(
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                child: BlocBuilder<WrapScreenCubit, WrapScreenState>(
                  buildWhen: (p, c) =>
                      p.avatar != c.avatar ||
                      p.borderRadius != c.borderRadius ||
                      p.deleteIcon != c.deleteIcon ||
                      p.elevation != c.elevation ||
                      p.runSpacing != c.runSpacing ||
                      p.spacing != c.spacing,
                  builder: (context, state) => Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SwitchItem(
                              title: 'elevation',
                              option: state.elevation,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().toggleElevation();
                              },
                            ),
                            SwitchItem(
                              title: 'deleteIcon',
                              option: state.deleteIcon,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().toggleDeleteIcon();
                              },
                            ),
                            SwitchItem(
                              title: 'spacing',
                              option: state.spacing,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().toggleSpacing();
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
                              option: state.avatar,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().toggleAvatar();
                              },
                            ),
                            OptionItem(
                              option: state.borderRadius,
                              optionData: Constants.borderTypeData,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().setBorderRadius(
                                    value ?? Constants.borderTypeData.first);
                              },
                              title: '',
                              getName: ((p0) => p0['title']),
                            ),
                            SwitchItem(
                              title: 'runSpacing',
                              option: state.runSpacing,
                              onChanged: (value) {
                                context.read<WrapScreenCubit>().toggleRunSpacing();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
