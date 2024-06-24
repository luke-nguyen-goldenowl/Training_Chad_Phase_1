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
    final containerCubit = context.read<ContainerCubit>();
    final containerState = context.watch<ContainerCubit>().state;

    return Scaffold(
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
                child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: containerState.backgroundOption['value'],
                      borderRadius: containerState.borderRadiusOption['value'],
                      border: containerState.borderOption
                          ? Border.all(
                              color: Colors.red,
                              width: 5,
                            )
                          : null,
                      boxShadow: [
                        containerState.boxShadowOption
                            ? BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            : const BoxShadow(),
                      ],
                      backgroundBlendMode: containerState.blendModeOption,
                    )),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SwitchItem(
                        title: 'Border',
                        option: containerState.borderOption,
                        onChanged: (value) {
                          containerCubit.setBorderOption(value);
                        }),
                    OptionItem<Map<String, dynamic>>(
                        getName: (p0) {
                          return p0['title'].toString();
                        },
                        title: 'BorderRadius',
                        option: containerState.borderRadiusOption,
                        optionData: Constants.borderRadiusData,
                        onChanged: (value) {
                          containerCubit.setBorderRadiusOption(value ?? {});
                        }),
                    SwitchItem(
                        title: 'BoxShadow',
                        option: containerState.boxShadowOption,
                        onChanged: (value) {
                          containerCubit.setBoxShadowOption(value);
                        }),
                    OptionItem<Map<String, dynamic>>(
                        getName: (p0) {
                          return p0['title'].toString();
                        },
                        title: 'Background',
                        option: containerState.backgroundOption,
                        optionData: Constants.backgroundData,
                        onChanged: (value) {
                          containerCubit.setBackgroundOption(value ?? {});
                        }),
                    OptionItem<BlendMode>(
                        getName: (p0) {
                          return p0.name;
                        },
                        title: 'BlendMode',
                        option: containerState.blendModeOption,
                        optionData: BlendMode.values,
                        onChanged: (value) {
                          containerCubit
                              .setBlendModeOption(value ?? BlendMode.srcOver);
                        }),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
