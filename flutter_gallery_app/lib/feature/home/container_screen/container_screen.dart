import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/cubit/container_cubit.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Container View',
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
            Expanded(
                flex: 7,
                child: Center(
                  child: BlocBuilder<ContainerCubit, ContainerState>(
                    buildWhen: (p, c) =>
                        p.backgroundOption['value'] !=
                            c.backgroundOption['value'] ||
                        p.borderRadiusOption['value'] !=
                            c.borderRadiusOption['value'] ||
                        p.borderOption != c.borderOption ||
                        p.boxShadowOption != c.boxShadowOption ||
                        p.blendModeOption != c.blendModeOption,
                    builder: (context, state) => Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: state.backgroundOption['value'],
                          borderRadius: state.borderRadiusOption['value'],
                          border: state.borderOption
                              ? Border.all(
                                  color: Colors.red,
                                  width: 5,
                                )
                              : null,
                          boxShadow: [
                            state.boxShadowOption
                                ? BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  )
                                : const BoxShadow(),
                          ],
                          backgroundBlendMode: state.blendModeOption,
                        )),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  child: BlocBuilder<ContainerCubit, ContainerState>(
                    buildWhen: (p, c) =>
                        p.backgroundOption['value'] !=
                            c.backgroundOption['value'] ||
                        p.borderRadiusOption['value'] !=
                            c.borderRadiusOption['value'] ||
                        p.borderOption != c.borderOption ||
                        p.boxShadowOption != c.boxShadowOption ||
                        p.blendModeOption != c.blendModeOption,
                    builder: (context, state) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SwitchItem(
                            title: 'Border',
                            option: state.borderOption,
                            onChanged: (value) {
                              context
                                  .read<ContainerCubit>()
                                  .setBorderOption(value);
                            }),
                        OptionItem<Map<String, dynamic>>(
                            getName: (p0) {
                              return p0['title'].toString();
                            },
                            title: 'BorderRadius',
                            option: state.borderRadiusOption,
                            optionData: Constants.borderRadiusData,
                            onChanged: (value) {
                              context
                                  .read<ContainerCubit>()
                                  .setBorderRadiusOption(value ?? {});
                            }),
                        SwitchItem(
                            title: 'BoxShadow',
                            option: state.boxShadowOption,
                            onChanged: (value) {
                              context
                                  .read<ContainerCubit>()
                                  .setBoxShadowOption(value);
                            }),
                        OptionItem<Map<String, dynamic>>(
                            getName: (p0) {
                              return p0['title'].toString();
                            },
                            title: 'Background',
                            option: state.backgroundOption,
                            optionData: Constants.backgroundData,
                            onChanged: (value) {
                              context
                                  .read<ContainerCubit>()
                                  .setBackgroundOption(value ?? {});
                            }),
                        OptionItem<BlendMode>(
                            getName: (p0) {
                              return p0.name;
                            },
                            title: 'BlendMode',
                            option: state.blendModeOption,
                            optionData: BlendMode.values,
                            onChanged: (value) {
                              context.read<ContainerCubit>().setBlendModeOption(
                                  value ?? BlendMode.srcOver);
                            }),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
