import 'package:flutter/material.dart';

class ElevalatedButtonIconWidget extends StatelessWidget {
  const ElevalatedButtonIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 34),
          backgroundColor: const Color(0xff2196F3),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      icon: const Icon(
        Icons.account_circle_sharp,
        color: Colors.white,
      ),
      label: const Text(
        'Elevated Button Icon',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}