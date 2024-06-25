import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/cubit/text_field_screen_cubit.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: BlocBuilder<TextFieldScreenCubit,TextFieldScreenState>(
        buildWhen: (p, c) =>
            p.showCounterText != c.showCounterText ||
            p.showErrorText != c.showErrorText ||
            p.showHelpText != c.showHelpText ||
            p.showHintText != c.showHintText ||
            p.showLabelText != c.showLabelText ||
            p.showPrefix != c.showPrefix ||
            p.showPrefixIcon != c.showPrefixIcon ||
            p.showSuffix != c.showSuffix,
        builder: (context, state) => Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: state.showHintText
                    ? 'Hint Text'
                    : null,
                labelText: state.showLabelText
                    ? 'Label Text'
                    : null,
                helperText: state.showHelpText
                    ? 'Help Text'
                    : null,
                errorText: state.showErrorText
                    ? 'Error Text'
                    : null,
                counterText: state.showCounterText
                    ? 'Counter Text'
                    : null,
                prefixText:
                    state.showPrefix ? 'Prefix' : null,
                suffixText:
                    state.showSuffix ? 'Suffix' : null,
                prefixIcon: state.showPrefixIcon
                    ? const Icon(Icons.person)
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: state.showHintText
                    ? 'Hint Text'
                    : null,
                labelText: state.showLabelText
                    ? 'Label Text'
                    : null,
                helperText: state.showHelpText
                    ? 'Help Text'
                    : null,
                errorText: state.showErrorText
                    ? 'Error Text'
                    : null,
                counterText: state.showCounterText
                    ? 'Counter Text'
                    : null,
                prefixText:
                    state.showPrefix ? 'Prefix' : null,
                suffixText:
                      state.showSuffix ? 'Suffix' : null,
                prefixIcon: state.showPrefixIcon
                    ? const Icon(Icons.person)
                    : null,
                border: const OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}