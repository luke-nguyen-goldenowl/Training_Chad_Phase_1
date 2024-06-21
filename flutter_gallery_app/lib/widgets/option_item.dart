import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  const OptionItem(
      {Key? key,
      required this.option,
      required this.optionData,
      required this.onChanged,
      required this.title})
      : super(key: key);

  final String title;
  final int option;
  final List<Map<String, dynamic>> optionData;
  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: textTheme.labelMedium),
        DropdownButton<int>(
          value: option,
          items: optionData
              .asMap()
              .entries
              .map((e) => DropdownMenuItem(
                    value: e.key + 1,
                    child: Text(e.value['title'], style: textTheme.labelMedium),
                  ))
              .toList(),
          onChanged: (value) {
            onChanged(value ?? 0);
          },
        ),
      ],
    );
  }
}