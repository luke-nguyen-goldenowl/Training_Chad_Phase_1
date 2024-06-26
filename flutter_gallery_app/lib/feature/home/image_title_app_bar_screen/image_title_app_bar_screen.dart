import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/image_title_app_bar_screen/widgets/custom_app_bar.dart';

class ImageTitleAppBarScreen extends StatelessWidget {
  const ImageTitleAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              expandedHeight: 200,
              floating: false,
              pinned: true,
              snap: false,
              stretch: true,
              flexibleSpace: CustomAppBar(expandedHeight: 200,),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ListTile(
                  title: Text("Index: $index"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
