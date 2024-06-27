import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/custom_box_shape_screen/custom_box_shape_screen.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/text_field_screen.dart';
import 'package:flutter_gallery_app/feature/home/bottom_app_bar_screen/bottom_app_bar_screen.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/button_screen.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/wrap_screen.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/container_screen.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/stack_align_screen.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/row_column_expanded.dart';
import 'package:flutter_gallery_app/feature/home/rich_text_view/rich_text_view.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/cupertino_screen.dart';
import 'package:flutter_gallery_app/widgets/placeholder_screen.dart';

import '../feature/home/image_title_app_bar_screen/image_title_app_bar_screen.dart';

class Constants {
  static const List<Map<String, dynamic>> listViewData = [
    {
      'leading': Icons.phone_iphone_rounded,
      'title': 'Cupertino',
      'subtitle':
          'Beautiful and high-fidelity widgets for current iOS design language',
      'page': CupertinoScreen()
    },
    {
      'leading': Icons.text_fields_outlined,
      'title': 'Typography',
      'subtitle': 'All of the perdefined text styles',
      'page': RichTextView()
    },
    {
      'leading': Icons.menu,
      'title': 'Bottom app bar',
      'subtitle': 'Bottom navigation bar',
      'page': BottomAppBarScreen()
    },
    {
      'leading': Icons.web,
      'title': 'Button',
      'subtitle':
          'RaisedButton, FlatButton, DropdownButton, FloatingActionButton,IconButton, InkWell, RawMaterialButton',
      'page': ButtonScreen()
    },
    {
      'leading': Icons.list,
      'title': 'List',
      'subtitle': 'Scrolling list layout',
      'page': PlaceholderScreen()
    },
    {
      'leading': Icons.credit_card,
      'title': 'Card',
      'subtitle': 'Cards with rounded corners and decoration',
      'page': PlaceholderScreen()
    },
    {
      'leading': Icons.list,
      'title': 'List Title',
      'subtitle':
          'A single fixed-height row that typically contains some text as well as a leading or trailing icon',
      'page': PlaceholderScreen()
    },
    {
      'leading': Icons.tab_unselected,
      'title': 'Alert',
      'subtitle': 'Alerts, SnackBar & Tooltip',
      'page': PlaceholderScreen()
    },
    {
      'leading': Icons.menu,
      'title': 'Text Field',
      'subtitle': 'Textt Field, Text Field Form',
      'page': TextFieldScreen(),
    },
    {
      'leading': Icons.graphic_eq,
      'title': 'Row & Column',
      'subtitle':
          'A widget that displays its children in a horizontal and vertical array',
      'page': RowColumnExpanded()
    },
    {
      'leading': Icons.videogame_asset,
      'title': 'Wrap & Chip',
      'subtitle': 'Wrap & Chip',
      'page': WrapScreen()
    },
    {
      'leading': Icons.copy,
      'title': 'Stack & Align',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': StackAlignScreen()
    },
    {
      'leading': Icons.check_box_outline_blank_sharp,
      'title': 'Container - Decoration',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': ContainerScreen()
    },
    {
      'leading': Icons.image,
      'title': 'Image & Title App Bar',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': ImageTitleAppBarScreen()
    },
    {
      'leading': Icons.format_paint,
      'title': 'CustomBoxShape',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': CustomBoxShapeScreen()
    },
  ];

  static const List<Map<String, dynamic>> floatActionButtonPositionData = [
    {
      'title': 'Docked - End',
      'value': FloatingActionButtonLocation.endDocked,
    },
    {
      'title': 'Docked - Center',
      'value': FloatingActionButtonLocation.centerDocked,
    },
    {
      'title': 'Floating - End',
      'value': FloatingActionButtonLocation.endFloat,
    },
    {
      'title': 'Floating - Center',
      'value': FloatingActionButtonLocation.centerFloat,
    },
  ];

  static const List<String> dropdownData = <String>[
    'Dropdown',
    'Another Item',
  ];

  static const List<String> dropdownFormFieldData = <String>[
    'Dropdown Form Field',
    'Another Item',
  ];

  static List<Map<String, dynamic>> borderTypeData = [
    {'title': 'Stadium', 'value': const StadiumBorder()},
    {'title': 'Circle', 'value': const CircleBorder()},
    {
      'title': 'RoundedRectangle',
      'value': RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      )
    },
  ];

  static List<Map<String, dynamic>> borderRadiusData = [
    {'title': 'none', 'value': BorderRadius.zero},
    {'title': 'all', 'value': const BorderRadius.all(Radius.circular(50))},
    {'title': 'circular', 'value': BorderRadius.circular(50)},
    {
      'title': 'only',
      'value': const BorderRadius.only(topLeft: Radius.circular(100))
    },
    {
      'title': 'lerp',
      'value': BorderRadius.lerp(
          BorderRadius.circular(1), BorderRadius.circular(70), 0.5)
    },
    {
      'title': 'horizontal',
      'value': const BorderRadius.horizontal(
        left: Radius.circular(60),
      )
    },
    {
      'title': 'vertical',
      'value': const BorderRadius.vertical(
        top: Radius.circular(60),
      )
    },
  ];

  static const List<Map<String, dynamic>> backgroundData = [
    {'title': 'color', 'value': Colors.blue},
    {'title': 'transparent', 'value': Colors.transparent},
  ];
  static const List<Map<String, dynamic>> alignmentData = [
    {
      'title': 'bottomCenter',
      'value': Alignment.bottomCenter,
    },
    {
      'title': 'bottomLeft',
      'value': Alignment.bottomLeft,
    },
    {
      'title': 'bottomRight',
      'value': Alignment.bottomRight,
    },
    {
      'title': 'center',
      'value': Alignment.center,
    },
    {
      'title': 'centerLeft',
      'value': Alignment.centerLeft,
    },
    {
      'title': 'centerRight',
      'value': Alignment.centerRight,
    },
    {
      'title': 'topCenter',
      'value': Alignment.topCenter,
    },
    {
      'title': 'topLeft',
      'value': Alignment.topLeft,
    },
    {
      'title': 'topRight',
      'value': Alignment.topRight,
    },
  ];
}
