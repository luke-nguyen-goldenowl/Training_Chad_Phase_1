import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        onPressed: null,
        child: Text(
          'Button',
          style: (textTheme.labelMedium ?? const TextStyle())
              .copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: const Color(0xff2196F3),
          ),
        ),
      ),
    );
  }
}