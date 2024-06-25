import 'package:flutter/material.dart';

class ElevalatedButtonWidget extends StatelessWidget {
  const ElevalatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 34),
          backgroundColor: const Color(0xff2196F3),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: const Text(
        'Elevated Button',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}