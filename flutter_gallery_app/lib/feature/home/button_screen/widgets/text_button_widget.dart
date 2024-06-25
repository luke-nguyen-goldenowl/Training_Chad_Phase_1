import 'package:flutter/material.dart';


class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Text Button',
          style: TextStyle(
              color: Color(0xff2196F3),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}