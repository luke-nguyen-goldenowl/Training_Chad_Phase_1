import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/text_field_screen/cubit/text_field_screen_cubit.dart';
import 'package:flutter_gallery_app/widgets/switch_item.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldScreenCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Form view',
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
            Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.all(30),
                color: const Color.fromARGB(255, 250, 250, 250),
                child: BlocBuilder<TextFieldScreenCubit, TextFieldScreenState>(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SwitchItem(
                          title: 'Hint Text',
                          option: state.showHintText,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleHintText(value);
                          }),
                      SwitchItem(
                          title: 'Label Text',
                          option: state.showLabelText,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleLabelText(value);
                          }),
                      SwitchItem(
                          title: 'Help Text',
                          option: state.showHelpText,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleHelpText(value);
                          }),
                      SwitchItem(
                          title: 'Error Text',
                          option: state.showErrorText,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleErrorText(value);
                          }),
                      SwitchItem(
                          title: 'Counter Text',
                          option: state.showCounterText,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleCounterText(value);
                          }),
                      SwitchItem(
                          title: 'Prefix',
                          option: state.showPrefix,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().togglePrefix(value);
                          }),
                      SwitchItem(
                          title: 'Suffix',
                          option: state.showSuffix,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().toggleSuffix(value);
                          }),
                      SwitchItem(
                          title: 'Prefix Icon',
                          option: state.showPrefixIcon,
                          onChanged: (value) {
                            context.read<TextFieldScreenCubit>().togglePrefixIcon(value);
                          }),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
