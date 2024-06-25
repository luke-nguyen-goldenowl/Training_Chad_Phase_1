import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';

class GroupButtonWidget extends StatelessWidget {
  const GroupButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonScreenCubit, ButtonScreenState>(
      buildWhen: (p, c) => p.options != c.options,
      builder: (context, state) => ToggleButtons(
        constraints: const BoxConstraints(minHeight: 48),
        onPressed: (int index) {
          context
              .read<ButtonScreenCubit>()
              .updateOptionState(index);
        },
        isSelected: state.options,
        fillColor: const Color(0xffE0EEFA),
        borderColor: Colors.grey[300],
        borderWidth: 2,
        selectedColor: const Color.fromARGB(255, 4, 141, 246),
        children: const <Widget>[
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text(
              'Option 1',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text(
              'Option 2',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text(
              'Option 3',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}