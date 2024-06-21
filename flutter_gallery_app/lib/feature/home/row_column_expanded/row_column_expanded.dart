import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/widgets/option_item.dart';

class RowColumnExpanded extends StatefulWidget {
  const RowColumnExpanded({super.key});

  @override
  _RowColumnExpandedState createState() => _RowColumnExpandedState();
}

class _RowColumnExpandedState extends State<RowColumnExpanded> {
  int rowColumnOption = 1;
  int mainAxisSizeOption = 1;
  int mainAxisAlignmentOption = 1;
  int crossAxisAlignmentOption = 1;
  int verticalDirectionOption = 1;
  int textDirectionOption = 1;
  int textBaselineOption = 1;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row & Column',
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
              child: rowColumnOption == 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            color: Colors.yellow,
                            child: Row(
                              mainAxisSize: Constants
                                      .mainAxisSizeData[mainAxisSizeOption - 1]
                                  ['value'],
                              mainAxisAlignment:
                                  Constants.mainAxisAlignmentData[
                                      mainAxisAlignmentOption - 1]['value'],
                              crossAxisAlignment:
                                  Constants.crossAxisAlignmentData[
                                      crossAxisAlignmentOption - 1]['value'],
                              verticalDirection:
                                  Constants.verticalDirectionData[
                                      verticalDirectionOption - 1]['value'],
                              textDirection: Constants.textDirectionData[
                                  textDirectionOption - 1]['value'],
                              textBaseline: Constants
                                      .textBaselineData[textBaselineOption - 1]
                                  ['value'],
                              children: [
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 50, height: 50),
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 100, height: 100),
                                Image.asset('assets/icons/row_column_icon.png',
                                    width: 50, height: 50),
                              ],
                            )),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.yellow,
                          child: Column(
                            mainAxisSize: Constants
                                    .mainAxisSizeData[mainAxisSizeOption - 1]
                                ['value'],
                            mainAxisAlignment: Constants.mainAxisAlignmentData[
                                mainAxisAlignmentOption - 1]['value'],
                            crossAxisAlignment:
                                Constants.crossAxisAlignmentData[
                                    crossAxisAlignmentOption - 1]['value'],
                            verticalDirection: Constants.verticalDirectionData[
                                verticalDirectionOption - 1]['value'],
                            textDirection: Constants
                                    .textDirectionData[textDirectionOption - 1]
                                ['value'],
                            textBaseline: Constants
                                    .textBaselineData[textBaselineOption - 1]
                                ['value'],
                            children: [
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 100, height: 100),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                            ],
                          ),
                        ),
                      ],
                    )),
          Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              title: Text('Row', style: textTheme.labelMedium),
                              leading: Radio<int>(
                                value: 1,
                                groupValue: rowColumnOption,
                                onChanged: (value) {
                                  setState(() {
                                    rowColumnOption = value ?? 0;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title:
                                  Text('Column', style: textTheme.labelMedium),
                              leading: Radio<int>(
                                value: 2,
                                groupValue: rowColumnOption,
                                onChanged: (value) {
                                  setState(() {
                                    rowColumnOption = value ?? 0;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      OptionItem(
                          option: mainAxisSizeOption,
                          optionData: Constants.mainAxisSizeData,
                          onChanged: (value) {
                            setState(() {
                              mainAxisSizeOption = value;
                            });
                          },
                          title: 'mainAxisSize'),
                      OptionItem(
                          option: mainAxisAlignmentOption,
                          optionData: Constants.mainAxisAlignmentData,
                          onChanged: (value) {
                            setState(() {
                              mainAxisAlignmentOption = value;
                            });
                          },
                          title: 'mainAxisAlignment'),
                      OptionItem(
                          option: crossAxisAlignmentOption,
                          optionData: Constants.crossAxisAlignmentData,
                          onChanged: (value) {
                            setState(() {
                              crossAxisAlignmentOption = value;
                            });
                          },
                          title: 'crossAxisAlignment'),
                      OptionItem(
                          option: verticalDirectionOption,
                          optionData: Constants.verticalDirectionData,
                          onChanged: (value) {
                            setState(() {
                              verticalDirectionOption = value;
                            });
                          },
                          title: 'verticalDirection'),
                      OptionItem(
                          option: textDirectionOption,
                          optionData: Constants.textDirectionData,
                          onChanged: (value) {
                            setState(() {
                              textDirectionOption = value;
                            });
                          },
                          title: 'textDirection'),
                      OptionItem(
                          option: textBaselineOption,
                          optionData: Constants.textBaselineData,
                          onChanged: (value) {
                            setState(() {
                              textBaselineOption = value;
                            });
                          },
                          title: 'textBaseline'),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
