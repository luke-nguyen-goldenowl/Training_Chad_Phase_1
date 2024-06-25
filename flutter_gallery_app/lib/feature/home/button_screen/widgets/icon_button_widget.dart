import 'package:flutter/material.dart';


class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 187, 187, 187)
                .withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        style: IconButton.styleFrom(
          minimumSize: const Size(54, 54),
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xff2196F3),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}