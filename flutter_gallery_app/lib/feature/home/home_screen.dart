import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/widgets/list_tile_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> listViewData = Constants.listViewData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Widget',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xff2196F3),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: listViewData.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 1,
          indent: 75,
        ),
        itemBuilder: (context, index) {
          return ListTileItem(
            itemData: listViewData[index],
          );
        },
      ),
    );
  }
}
