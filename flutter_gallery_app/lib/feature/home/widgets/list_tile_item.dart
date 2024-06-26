import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.itemData});
  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => itemData['page'],
          ),
        );
      },
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 20),
        title: Text(
          itemData['title'],
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        subtitle: Container(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: Text(
            itemData['subtitle'],
            style: const TextStyle(fontSize: 14, height: 1.2),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(
            itemData['leading'],
            color: const Color.fromARGB(255, 120, 120, 120),
          ),
        ),
      ),
    );
  }
}
