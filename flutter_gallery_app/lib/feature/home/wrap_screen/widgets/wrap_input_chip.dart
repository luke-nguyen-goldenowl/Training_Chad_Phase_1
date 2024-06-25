import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';

class WrapInputChip extends StatelessWidget {
  const WrapInputChip({
    super.key,
    required this.inputChipData,
    required this.textTheme,
  });

  final List<String> inputChipData;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Input Chip',
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
            children: inputChipData
                .map((e) => InputChip(
                      onDeleted: state.deleteIcon ? () {} : null,
                      avatar: state.avatar
                          ? const Icon(Icons.account_circle)
                          : null,
                      elevation: state.elevation ? 5 : 0,
                      onSelected: e != 'Disable' ? (bool selected) {} : null,
                      shape: state.borderRadius['value'],
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      disabledColor: const Color(0xffEEEEEE),
                      selected: e == 'Android',
                      label: Text(
                        e,
                        style: (textTheme.labelMedium ?? const TextStyle())
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
