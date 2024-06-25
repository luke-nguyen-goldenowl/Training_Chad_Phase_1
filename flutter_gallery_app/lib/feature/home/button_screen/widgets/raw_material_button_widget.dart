import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/widgets/material_button_custom.dart';

class RawMaterialButtonWidget extends StatelessWidget {
  const RawMaterialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: CustomPaint(
        painter: MaterialButtonCustom(),
        child: RawMaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          clipBehavior: Clip.hardEdge,
          constraints: const BoxConstraints(
            minWidth: double.infinity,
          ),
          child: const Text(
            'Raw Material Button',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 15),
          ),
        ),
      ),
    );
  }
}