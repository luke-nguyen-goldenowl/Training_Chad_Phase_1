import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/constants/constants.dart';
import 'package:flutter_gallery_app/feature/home/button_screen/cubit/button_screen_cubit.dart';

class DropdownFormFieldButton extends StatelessWidget {
  const DropdownFormFieldButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonScreenCubit, ButtonScreenState>(
      buildWhen: (p, c) =>
          p.dropdownFormField != c.dropdownFormField,
      builder: (context, state) => DropdownButtonFormField<String>(
        hint: const Text('Select your favourite fruit'),
        value: state.dropdownFormField,
        onChanged: (String? newValue) {
          context.read<ButtonScreenCubit>().updateDropdownFormField(
              newValue ?? Constants.dropdownFormFieldData.first);
        },
        items: Constants.dropdownFormFieldData
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