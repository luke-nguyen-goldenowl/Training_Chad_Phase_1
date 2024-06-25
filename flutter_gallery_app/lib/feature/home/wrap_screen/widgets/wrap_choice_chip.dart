import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';

class WrapChoiceChip extends StatelessWidget {
  const WrapChoiceChip({
    super.key,
    required this.choiceChipData,
  });

  final List<String> choiceChipData;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Choice Chip',
            style: (textTheme.labelMedium ?? const TextStyle())
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<WrapScreenCubit, WrapScreenState>(
          buildWhen: (p, c) =>
              p.avatar != c.avatar ||
              p.borderRadius != c.borderRadius ||
              p.deleteIcon != c.deleteIcon ||
              p.elevation != c.elevation ||
              p.runSpacing != c.runSpacing ||
              p.spacing != c.spacing,
          builder: (context, state) => Wrap(
            spacing: state.spacing ? 20 : 0,
            runSpacing: state.runSpacing ? 20 : 0,
            children: choiceChipData
                .map((e) => ChoiceChip(
                      avatar: state.avatar
                          ? const Icon(Icons.account_circle)
                          : null,
                      elevation: state.elevation ? 5 : 0,
                      shape: state.borderRadius['value'],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      selectedColor: const Color.fromARGB(255, 173, 215, 246),
                      onSelected: e != 'Disable' ? (bool selected) {} : null,
                      selected: e == 'Small',
                      disabledColor: const Color(0xffEEEEEE),
                      backgroundColor: e == 'Disable' ? Colors.grey[300] : null,
                      label: Text(
                        e,
                        style: TextStyle(
                          fontSize: 16,
                          color: e == 'Small'
                              ? const Color.fromARGB(255, 0, 140, 255)
                              : Colors.black,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
