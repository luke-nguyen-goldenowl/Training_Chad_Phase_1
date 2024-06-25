import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWithBackgroundWidget extends StatelessWidget {
  const CupertinoButtonWithBackgroundWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        onPressed: () {},
        color: const Color(0xff2196F3),
        child: Text(
          'With background',
          style: (textTheme.labelMedium ?? const TextStyle())
              .copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}