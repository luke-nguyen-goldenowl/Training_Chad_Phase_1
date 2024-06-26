import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/cubit/text_field_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class TextFieldConfigWidget extends StatelessWidget {
  const TextFieldConfigWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: const Color.fromARGB(255, 250, 250, 250),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildHintText(),
            const SizedBox(height: 8),
            _buildLabelText(),
            const SizedBox(height: 8),
            _buildHelpText(),
            const SizedBox(height: 8),
            _buildErrorText(),
            const SizedBox(height: 8),
            _buildCounterText(),
            const SizedBox(height: 8),
            _buildPrefix(),
            const SizedBox(height: 8),
            _buildSuffix(),
            const SizedBox(height: 8),
            _buildPrefixIcon(),
          ],
        ),
      ),
    );
  }

  Widget _buildHintText() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showHintText != c.showHintText,
      builder: (context, state) => SwitchItem(
        title: 'Hint Text',
        option: state.showHintText,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleHintText(value);
        },
      ),
    );
  }

  Widget _buildLabelText() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showLabelText != c.showLabelText,
      builder: (context, state) => SwitchItem(
        title: 'Label Text',
        option: state.showLabelText,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleLabelText(value);
        },
      ),
    );
  }

  Widget _buildHelpText() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showHelpText != c.showHelpText,
      builder: (context, state) => SwitchItem(
        title: 'Help Text',
        option: state.showHelpText,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleHelpText(value);
        },
      ),
    );
  }

  Widget _buildErrorText() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showErrorText != c.showErrorText,
      builder: (context, state) => SwitchItem(
        title: 'Error Text',
        option: state.showErrorText,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleErrorText(value);
        },
      ),
    );
  }

  Widget _buildCounterText() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showCounterText != c.showCounterText,
      builder: (context, state) => SwitchItem(
        title: 'Counter Text',
        option: state.showCounterText,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleCounterText(value);
        },
      ),
    );
  }

  Widget _buildPrefix() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showPrefix != c.showPrefix,
      builder: (context, state) => SwitchItem(
        title: 'Prefix',
        option: state.showPrefix,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().togglePrefix(value);
        },
      ),
    );
  }

  Widget _buildSuffix() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showSuffix != c.showSuffix,
      builder: (context, state) => SwitchItem(
        title: 'Suffix',
        option: state.showSuffix,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().toggleSuffix(value);
        },
      ),
    );
  }

  Widget _buildPrefixIcon() {
    return BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
      buildWhen: (p, c) => p.showPrefixIcon != c.showPrefixIcon,
      builder: (context, state) => SwitchItem(
        title: 'Prefix Icon',
        option: state.showPrefixIcon,
        onChanged: (value) {
          context.read<TextFieldScreenCubit>().togglePrefixIcon(value);
        },
      ),
    );
  }
}
