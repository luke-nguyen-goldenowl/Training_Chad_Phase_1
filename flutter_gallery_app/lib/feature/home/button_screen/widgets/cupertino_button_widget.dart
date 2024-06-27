import 'package:flutter/cupertino.dart';

class CupertinoButtonWidget extends StatelessWidget {
  const CupertinoButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: double.infinity,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        color: const Color(0xff9E9E9E),
        child: const Text(
          'Cupertino Button',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        onPressed: () {},
      ),
    );
  }
}