import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double expandedHeight;

  CustomAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double top = constraints.biggest.height;

      double opacity = 1 - (1 - top / expandedHeight);
      if (top > expandedHeight) opacity = 1;
      if (top <= 56) opacity = 0;

      return Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.network(
              "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Opacity(
              opacity: 1.0 - ((top - 56) / expandedHeight) < 0.3
                  ? 0
                  : 1.0 - ((top - 56) / expandedHeight),
              child: const Text(
                "MySliverAppBar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          Positioned(
            top: expandedHeight / 2 - (expandedHeight - top),
            left: MediaQuery.of(context).size.width / 4,
            child: Opacity(
              opacity: opacity,
              child: Card(
                elevation: 10,
                child: SizedBox(
                  height: expandedHeight,
                  width: MediaQuery.of(context).size.width / 2,
                  child: const FlutterLogo(),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
