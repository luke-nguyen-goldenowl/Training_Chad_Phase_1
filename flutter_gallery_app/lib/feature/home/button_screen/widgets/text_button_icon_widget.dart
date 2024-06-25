import 'package:flutter/material.dart';

class TextButtonIconWidget extends StatelessWidget {
  const TextButtonIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton.icon(
        onPressed: () {},
        icon: const Icon(
          Icons.account_circle_sharp,
          color: Color(0xff2196F3),
        ),
        label: const Text(
          'Text Button Icon',
          style: TextStyle(
            color: Color(0xff2196F3),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}