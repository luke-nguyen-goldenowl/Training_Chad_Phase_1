import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class StackAlignScreen extends StatefulWidget {
  const StackAlignScreen({Key? key}) : super(key: key);

  @override
  _StackAlignScreenState createState() => _StackAlignScreenState();
}

class _StackAlignScreenState extends State<StackAlignScreen> {
  int alignmentOption = 1;
  int textDirectionOption = 1;
  int stackFitOption = 1;
  int clipOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack & Align',
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
              flex: 5,
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: Stack(
                    alignment: Constants.alignmentData[alignmentOption-1]
                        ['value'],
                    textDirection: Constants
                        .textDirectionData[textDirectionOption-1]['value'],
                    fit: Constants.stackFitData[stackFitOption-1]['value'],
                    clipBehavior: Constants.clipData[clipOption-1]['value'],
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: const Color.fromARGB(255, 90, 227, 94),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionItem(
                        title: 'Alignment',
                        option: alignmentOption,
                        optionData: Constants.alignmentData,
                        onChanged: (value) {
                          setState(() {
                            alignmentOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'TextDirection',
                        option: textDirectionOption,
                        optionData: Constants.textDirectionData,
                        onChanged: (value) {
                          setState(() {
                            textDirectionOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'StackFit',
                        option: stackFitOption,
                        optionData: Constants.stackFitData,
                        onChanged: (value) {
                          setState(() {
                            stackFitOption = value;
                          });
                        }),
                    OptionItem(
                        title: 'Clip',
                        option: clipOption,
                        optionData: Constants.clipData,
                        onChanged: (value) {
                          setState(() {
                            clipOption = value;
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