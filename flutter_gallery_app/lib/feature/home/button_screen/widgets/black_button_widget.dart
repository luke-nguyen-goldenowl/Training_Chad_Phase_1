import 'package:flutter/material.dart';

class BlackButtonWidget extends StatelessWidget {
  const BlackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            backgroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(5)))),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}