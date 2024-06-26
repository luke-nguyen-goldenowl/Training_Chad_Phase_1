import 'package:flutter/material.dart';

class SwitchItem extends StatelessWidget {
  const SwitchItem(
      {super.key,
      required this.title,
      required this.option,
      required this.onChanged});
  final String title;
  final bool option;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textTheme.labelMedium,
        ),
        Switch(
          activeColor: const Color(0xff2196F3),
          value: option,
          onChanged: (value) {
            onChanged(value);
          },
        ),
      ],
    );
  }
}
