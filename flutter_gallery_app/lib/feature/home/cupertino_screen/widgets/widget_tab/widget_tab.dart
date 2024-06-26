import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widgets/cupertino_button_widget.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widgets/cupertino_button_with_background_widget.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widgets/slider_1_widget.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widgets/slider_2_widget.dart';
import 'package:flutter_gallery_app/feature/home/cupertino_screen/widgets/widget_tab/widgets/switch_2_widget.dart';

class WidgetTab extends StatelessWidget {
  const WidgetTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50, left: 20, bottom: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Widget',
                  style: (textTheme.labelMedium ?? const TextStyle())
                      .copyWith(fontSize: 32, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Pull to refresh',
                      style: (textTheme.labelMedium ?? const TextStyle())
                          .copyWith(fontSize: 21),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Indicator',
                    style: (textTheme.labelMedium ?? const TextStyle())
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                      child: CupertinoActivityIndicator(
                    radius: 14,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Button',
                    style: (textTheme.labelMedium ?? const TextStyle())
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoButtonWidget(textTheme: textTheme),
                  const SizedBox(
                    height: 10,
                  ),
                  CupertinoButtonWithBackgroundWidget(textTheme: textTheme),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Slider',
                    style: (textTheme.labelMedium ?? const TextStyle())
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  firstSliderWidget(),
                  secondSliderWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Switch',
                    style: (textTheme.labelMedium ?? const TextStyle())
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Switch.adaptive(
                          applyCupertinoTheme: true,
                          value: false,
                          onChanged: null),
                      secondSwitchWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
