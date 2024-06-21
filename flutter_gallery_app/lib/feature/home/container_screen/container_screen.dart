import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  bool borderOption = false;
  int borderRadiusOption = 1;
  bool boxShadowOption = false;
  int backgroundOption = 1;
  int blendModeOption = 1;

  @override
  Widget build(BuildContext context) {
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
                      color: Constants.backgroundData[backgroundOption - 1]
                          ['value'],
                      borderRadius: Constants
                          .borderRadiusData[borderRadiusOption - 1]['value'],
                      border: borderOption
                          ? Border.all(
                              color: Colors.red,
                              width: 5,
                            )
                          : null,
                      boxShadow: [
                        boxShadowOption
                            ? BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            : const BoxShadow(),
                      ],
                      backgroundBlendMode:
                          Constants.blendModeData[blendModeOption - 1]['value'],
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
                        option: borderOption,
                        onChanged: (value) {
                          setState(() {
                            borderOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'BorderRadius',
                        option: borderRadiusOption,
                        optionData: Constants.borderRadiusData,
                        onChanged: (value) {
                          setState(() {
                            borderRadiusOption = value;
                          });
                        }),
                    SwitchItem(
                        title: 'BoxShadow',
                        option: boxShadowOption,
                        onChanged: (value) {
                          setState(() {
                            boxShadowOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'Background',
                        option: backgroundOption,
                        optionData: Constants.backgroundData,
                        onChanged: (value) {
                          setState(() {
                            backgroundOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'BlendMode',
                        option: blendModeOption,
                        optionData: Constants.blendModeData,
                        onChanged: (value) {
                          setState(() {
                            blendModeOption = value;
                          });
                        }),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
