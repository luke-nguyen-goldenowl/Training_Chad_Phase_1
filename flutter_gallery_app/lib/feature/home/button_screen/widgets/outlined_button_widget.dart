import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
      child: const Text(
        'Outlined Button',
        style: TextStyle(
          color: Color(0xff2196F3),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}