import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: ListView.builder(
        itemCount: Constants.listViewData.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Constants.listViewData[index]['page'],
              ),
            );
          },
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            title: Text(
              Constants.listViewData[index]['title'],
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(bottom: 10, right: 10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Color.fromARGB(255, 220, 220, 220), width: 1.0),
                ),
              ),
              child: Text(
                Constants.listViewData[index]['subtitle'],
                style: const TextStyle(fontSize: 14, height: 1.2),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Constants.listViewData[index]['leading'],
                color: const Color.fromARGB(255, 120, 120, 120),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
