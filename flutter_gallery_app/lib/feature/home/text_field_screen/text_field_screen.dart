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
    final textFieldScreenCubit = context.read<TextFieldScreenCubit>();
    final textFieldScreenState = context.watch<TextFieldScreenCubit>().state;

    return Scaffold(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SwitchItem(
                      title: 'Hint Text',
                      option: textFieldScreenState.showHintText,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleHintText(value);
                      }),
                  SwitchItem(
                      title: 'Label Text',
                      option: textFieldScreenState.showLabelText,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleLabelText(value);
                      }),
                  SwitchItem(
                      title: 'Help Text',
                      option: textFieldScreenState.showHelpText,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleHelpText(value);
                      }),
                  SwitchItem(
                      title: 'Error Text',
                      option: textFieldScreenState.showErrorText,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleErrorText(value);
                      }),
                  SwitchItem(
                      title: 'Counter Text',
                      option: textFieldScreenState.showCounterText,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleCounterText(value);
                      }),
                  SwitchItem(
                      title: 'Prefix',
                      option: textFieldScreenState.showPrefix,
                      onChanged: (value) {
                        textFieldScreenCubit.togglePrefix(value);
                      }),
                  SwitchItem(
                      title: 'Suffix',
                      option: textFieldScreenState.showSuffix,
                      onChanged: (value) {
                        textFieldScreenCubit.toggleSuffix(value);
                      }),
                  SwitchItem(
                      title: 'Prefix Icon',
                      option: textFieldScreenState.showPrefixIcon,
                      onChanged: (value) {
                        textFieldScreenCubit.togglePrefixIcon(value);
                      }),
                ],
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
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: textFieldScreenState.showHintText
                          ? 'Hint Text'
                          : null,
                      labelText: textFieldScreenState.showLabelText
                          ? 'Label Text'
                          : null,
                      helperText: textFieldScreenState.showHelpText
                          ? 'Help Text'
                          : null,
                      errorText: textFieldScreenState.showErrorText
                          ? 'Error Text'
                          : null,
                      counterText: textFieldScreenState.showCounterText
                          ? 'Counter Text'
                          : null,
                      prefixText:
                          textFieldScreenState.showPrefix ? 'Prefix' : null,
                      suffixText:
                          textFieldScreenState.showSuffix ? 'Suffix' : null,
                      prefixIcon: textFieldScreenState.showPrefixIcon
                          ? const Icon(Icons.person)
                          : null,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: textFieldScreenState.showHintText
                          ? 'Hint Text'
                          : null,
                      labelText: textFieldScreenState.showLabelText
                          ? 'Label Text'
                          : null,
                      helperText: textFieldScreenState.showHelpText
                          ? 'Help Text'
                          : null,
                      errorText: textFieldScreenState.showErrorText
                          ? 'Error Text'
                          : null,
                      counterText: textFieldScreenState.showCounterText
                          ? 'Counter Text'
                          : null,
                      prefixText:
                          textFieldScreenState.showPrefix ? 'Prefix' : null,
                      suffixText:
                          textFieldScreenState.showSuffix ? 'Suffix' : null,
                      prefixIcon: textFieldScreenState.showPrefixIcon
                          ? const Icon(Icons.person)
                          : null,
                      border: const OutlineInputBorder(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
