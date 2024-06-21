import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/row_column_expanded.dart';

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
      'page': RowColumnExpanded()
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
      'page': Placeholder()
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

  static const List<Map<String, dynamic>> mainAxisSizeData = [
    {'title': 'min', 'value': MainAxisSize.min},
    {'title': 'max', 'value': MainAxisSize.max},
  ];
  static const List<Map<String, dynamic>> mainAxisAlignmentData = [
    {'title': 'center', 'value': MainAxisAlignment.center},
    {'title': 'end', 'value': MainAxisAlignment.end},
    {'title': 'spaceAround', 'value': MainAxisAlignment.spaceAround},
    {'title': 'spaceBetween', 'value': MainAxisAlignment.spaceBetween},
    {'title': 'spaceEvenly', 'value': MainAxisAlignment.spaceEvenly},
    {'title': 'start', 'value': MainAxisAlignment.start},
  ];
  static const List<Map<String, dynamic>> crossAxisAlignmentData = [
    {'title': 'center', 'value': CrossAxisAlignment.center},
    {'title': 'end', 'value': CrossAxisAlignment.end},
    {'title': 'start', 'value': CrossAxisAlignment.start},
  ];
  static const List<Map<String, dynamic>> verticalDirectionData = [
    {'title': 'down', 'value': VerticalDirection.down},
    {'title': 'up', 'value': VerticalDirection.up},
  ];
  static const List<Map<String, dynamic>> textDirectionData = [
    {'title': 'ltr', 'value': TextDirection.ltr},
    {'title': 'rtl', 'value': TextDirection.rtl},
  ];
  static const List<Map<String, dynamic>> textBaselineData = [
    {'title': 'alphabetic', 'value': TextBaseline.alphabetic},
    {'title': 'ideographic', 'value': TextBaseline.ideographic},
  ];
}
