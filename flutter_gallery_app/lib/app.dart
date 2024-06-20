import 'package:flutter/material.dart';
import 'package:flutter_gallery_app/feature/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2196F3)),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
