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
          textTheme: const TextTheme(
            labelMedium: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 50, 50, 50),
            ),
            bodySmall: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            bodyMedium: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            bodyLarge: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        home: const HomeScreen());
  }
}
