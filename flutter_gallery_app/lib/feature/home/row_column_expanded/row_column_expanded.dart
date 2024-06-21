import 'package:flutter/material.dart';

class RowColumnExpanded extends StatefulWidget {
  const RowColumnExpanded({Key? key}) : super(key: key);

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
  MainAxisSize mainAxisSize = MainAxisSize.min;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;
  VerticalDirection verticalDirection = VerticalDirection.down;
  TextDirection textDirection = TextDirection.ltr;
  TextBaseline textBaseline = TextBaseline.alphabetic;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    if (mainAxisSizeOption == 1) {
      mainAxisSize = MainAxisSize.min;
    } else {
      mainAxisSize = MainAxisSize.max;
    }

    if (mainAxisAlignmentOption == 1) {
      mainAxisAlignment = MainAxisAlignment.center;
    } else if (mainAxisAlignmentOption == 2) {
      mainAxisAlignment = MainAxisAlignment.end;
    } else if (mainAxisAlignmentOption == 3) {
      mainAxisAlignment = MainAxisAlignment.spaceAround;
    } else if (mainAxisAlignmentOption == 4) {
      mainAxisAlignment = MainAxisAlignment.spaceBetween;
    } else if (mainAxisAlignmentOption == 5) {
      mainAxisAlignment = MainAxisAlignment.spaceEvenly;
    } else if (mainAxisAlignmentOption == 6) {
      mainAxisAlignment = MainAxisAlignment.start;
    }

    if (crossAxisAlignmentOption == 1) {
      crossAxisAlignment = CrossAxisAlignment.center;
    } else if (crossAxisAlignmentOption == 2) {
      crossAxisAlignment = CrossAxisAlignment.end;
    } else if (crossAxisAlignmentOption == 3) {
      crossAxisAlignment = CrossAxisAlignment.start;
    }

    if (verticalDirectionOption == 1) {
      verticalDirection = VerticalDirection.down;
    } else if (verticalDirectionOption == 2) {
      verticalDirection = VerticalDirection.up;
    }

    if (textDirectionOption == 1) {
      textDirection = TextDirection.ltr;
    } else if (textDirectionOption == 2) {
      textDirection = TextDirection.rtl;
    }

    if (textBaselineOption == 1) {
      textBaseline = TextBaseline.alphabetic;
    } else if (textBaselineOption == 2) {
      textBaseline = TextBaseline.ideographic;
    }

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.yellow,
                    child: rowColumnOption == 1
                        ? Row(
                            mainAxisSize: mainAxisSize,
                            mainAxisAlignment: mainAxisAlignment,
                            crossAxisAlignment: crossAxisAlignment,
                            verticalDirection: verticalDirection,
                            textDirection: textDirection,
                            textBaseline: textBaseline,
                            children: [
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 100, height: 100),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                            ],
                          )
                        : Column(
                            mainAxisSize: mainAxisSize,
                            mainAxisAlignment: mainAxisAlignment,
                            crossAxisAlignment: crossAxisAlignment,
                            verticalDirection: verticalDirection,
                            textDirection: textDirection,
                            textBaseline: textBaseline,
                            children: [
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 100, height: 100),
                              Image.asset('assets/icons/row_column_icon.png',
                                  width: 50, height: 50),
                            ],
                          ),
                  )
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('mainAxisSize', style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: mainAxisSizeOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('min'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('max'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                mainAxisSizeOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('mainAxisAlignment',
                              style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: mainAxisAlignmentOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('center'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('end'),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text('spaceAround'),
                              ),
                              DropdownMenuItem(
                                value: 4,
                                child: Text('spaceBetween'),
                              ),
                              DropdownMenuItem(
                                value: 5,
                                child: Text('spaceEvenly'),
                              ),
                              DropdownMenuItem(
                                value: 6,
                                child: Text('start'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                mainAxisAlignmentOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('crossAxisAlignment',
                              style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: crossAxisAlignmentOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('center'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('end'),
                              ),
                              DropdownMenuItem(
                                value: 3,
                                child: Text('start'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                crossAxisAlignmentOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('verticalDirection',
                              style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: verticalDirectionOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('down'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('up'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                verticalDirectionOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('textDirection', style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: textDirectionOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('ltr'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('rtl'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                textDirectionOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text('textBaseline', style: textTheme.labelMedium),
                          DropdownButton<int>(
                            value: textBaselineOption,
                            items: const [
                              DropdownMenuItem(
                                value: 1,
                                child: Text('alphabetic'),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text('idelgraphic'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                textBaselineOption = value ?? 0;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
