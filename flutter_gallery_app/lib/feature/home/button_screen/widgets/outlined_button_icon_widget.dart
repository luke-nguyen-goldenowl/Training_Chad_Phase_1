import 'package:flutter/material.dart';

class OutlinedButtonIconWidget extends StatelessWidget {
  const OutlinedButtonIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 34),
        side: const BorderSide(
          color: Color.fromARGB(255, 221, 221, 221),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      icon: const Icon(
        Icons.account_circle_sharp,
        color: Color(0xff2196F3),
      ),
      label: const Text(
        'Outlined Button Icon',
        style: TextStyle(
          color: Color(0xff2196F3),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}