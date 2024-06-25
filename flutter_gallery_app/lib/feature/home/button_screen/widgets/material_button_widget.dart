import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/material_button_custom.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: CustomPaint(
        painter: MaterialButtonCustom(),
        child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          clipBehavior: Clip.hardEdge,
          minWidth: double.infinity,
          child: const Text(
            'Material Button',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}