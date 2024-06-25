import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/row_column_expanded_config/row_column_expanded_config.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/row_column_expanded_content/row_column_expanded_content.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/cubit/row_column_expanded_cubit.dart';

class RowColumnExpanded extends StatefulWidget {
  const RowColumnExpanded({super.key});

  @override
  _RowColumnExpandedState createState() => _RowColumnExpandedState();
}

class _RowColumnExpandedState extends State<RowColumnExpanded> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => RowColumnExpandedCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Row & Column',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xff2196F3),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: false,
        ),
        body: Column(
          children: [
            const RowColumnExpandedContent(),
            RowColumnExpandedConfig(textTheme: textTheme),
          ],
        ),
      ),
    );
  }
}
