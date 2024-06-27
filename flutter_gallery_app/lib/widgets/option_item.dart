import 'package:flutter/material.dart';

class OptionItem<T> extends StatelessWidget {
  const OptionItem(
      {super.key,
      required this.option,
      required this.optionData,
      required this.onChanged,
      required this.title,
      required this.getName});

  final String title;
  final T option;
  final List<T> optionData;
  final Function(T?) onChanged;
  final String Function(T) getName;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: title.isEmpty
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      children: [
        title.isNotEmpty
            ? Text(title, style: textTheme.labelMedium)
            : const SizedBox(),
        DropdownButton<T>(
          value: option,
          items: optionData
              .map((e) => DropdownMenuItem<T>(
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
