import 'package:flutter/material.dart';

class OptionItem<T> extends StatelessWidget {
  const OptionItem(
      {Key? key,
      required this.option,
      required this.optionData,
      required this.onChanged,
      required this.title,
      required this.getName})
      : super(key: key);

  final String title;
  final T option;
  final List<T> optionData;
  final Function(T?) onChanged;
  final String Function(T) getName;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: textTheme.labelMedium),
        DropdownButton<T>(
          value: option,
          items: optionData
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(getName(e), style: textTheme.labelMedium),
                  ))
              .toList(),
          onChanged: (value) {
            onChanged(value);
          },
        ),
      ],
    );
  }
}
