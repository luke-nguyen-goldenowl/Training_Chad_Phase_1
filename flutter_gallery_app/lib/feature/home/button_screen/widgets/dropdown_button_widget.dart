import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonScreenCubit, ButtonScreenState>(
      buildWhen: (p, c) => p.dropdown != c.dropdown,
      builder: (context, state) => DropdownButton<String>(
        isExpanded: true,
        hint: const Text('Select your favourite fruit'),
        value: state.dropdown,
        onChanged: (String? newValue) {
          context.read<ButtonScreenCubit>().updateDropdown(
              newValue ?? Constants.dropdownData.first);
        },
        items: Constants.dropdownData
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}