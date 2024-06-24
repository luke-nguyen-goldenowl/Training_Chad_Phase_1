import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';
import 'package:flutter_gallery_app/feature/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ButtonScreenCubit>(
          create: (context) => ButtonScreenCubit(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: const Color(0xff2196F3)),
            useMaterial3: true,
          ),
          home: const HomeScreen()),
    );
  }
}
