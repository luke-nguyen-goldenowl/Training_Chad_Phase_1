import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/stack_align_screen/stack_align_screen.dart';

class Constants {
  static const List<Map<String, dynamic>> listViewData = [
    {
      'leading': Icons.phone_iphone_rounded,
      'title': 'Cupertino',
      'subtitle':
          'Beautiful and high-fidelity widgets for current iOS design language',
      'page': Placeholder()
    },
    {
      'leading': Icons.text_fields_outlined,
      'title': 'Typography',
      'subtitle': 'All of the perdefined text styles',
      'page': Placeholder()
    },
    {
      'leading': Icons.menu,
      'title': 'Bottom app bar',
      'subtitle': 'Bottom navigation bar',
      'page': Placeholder()
    },
    {
      'leading': Icons.web,
      'title': 'Button',
      'subtitle':
          'RaisedButton, FlatButton, DropdownButton, FloatingActionButton,IconButton, InkWell, RawMaterialButton',
      'page': Placeholder()
    },
    {
      'leading': Icons.list,
      'title': 'List',
      'subtitle': 'Scrolling list layout',
      'page': Placeholder()
    },
    {
      'leading': Icons.credit_card,
      'title': 'Card',
      'subtitle': 'Cards with rounded corners and decoration',
      'page': Placeholder()
    },
    {
      'leading': Icons.list,
      'title': 'List Title',
      'subtitle':
          'A single fixed-height row that typically contains some text as well as a leading or trailing icon',
      'page': Placeholder()
    },
    {
      'leading': Icons.tab_unselected,
      'title': 'Alert',
      'subtitle': 'Alerts, SnackBar & Tooltip',
      'page': Placeholder()
    },
    {
      'leading': Icons.menu,
      'title': 'Text Field',
      'subtitle': 'Textt Field, Text Field Form',
      'page': Placeholder()
    },
    {
      'leading': Icons.graphic_eq,
      'title': 'Row & Column',
      'subtitle':
          'A widget that displays its children in a horizontal and vertical array',
      'page': Placeholder()
    },
    {
      'leading': Icons.videogame_asset,
      'title': 'Wrap & Chip',
      'subtitle': 'Wrap & Chip',
      'page': Placeholder()
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
      'page': Placeholder()
    },
    {
      'leading': Icons.image,
      'title': 'Image & Title App Bar',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': Placeholder()
    },
    {
      'leading': Icons.format_paint,
      'title': 'CustomBoxShape',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': Placeholder()
    },
    {
      'leading': Icons.branding_watermark_outlined,
      'title': 'Scaffold - BottomAppBar & ActionFloatButton',
      'subtitle': 'A widget that positions its children relative to its edges',
      'page': Placeholder()
    }
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

  static const List<Map<String, dynamic>> textDirectionData = [
    {
      'title': 'ltr',
      'value': TextDirection.ltr,
    },
    {
      'title': 'rtl',
      'value': TextDirection.rtl,
    },
  ];
  static const List<Map<String, dynamic>> stackFitData = [
    {
      'title': 'loose',
      'value': StackFit.loose,
    },
    {
      'title': 'expand',
      'value': StackFit.expand,
    },
    {
      'title': 'passthrough',
      'value': StackFit.passthrough,
    },
  ];
  static const List<Map<String, dynamic>> clipData = [
    {
      'title': 'none',
      'value': Clip.none,
    },
    {
      'title': 'hardEdge',
      'value': Clip.hardEdge,
    },
    {
      'title': 'antiAlias',
      'value': Clip.antiAlias,
    },
    {
      'title': 'antiAliasWithSaveLayer',
      'value': Clip.antiAliasWithSaveLayer,
    },
  ];
}
