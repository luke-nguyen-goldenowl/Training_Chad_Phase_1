import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/wrap_screen/cubit/wrap_screen_cubit.dart';

class WrapChipChip extends StatelessWidget {
  const WrapChipChip({
    super.key,
    required this.chipChipData,
  });

  final List<String> chipChipData;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Chip Chip',
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
            children: chipChipData
                .map(
                  (e) => Chip(
                    onDeleted: state.deleteIcon ? () {} : null,
                    avatar:
                        state.avatar ? const Icon(Icons.account_circle) : null,
                    elevation: state.elevation ? 5 : 0,
                    shape: state.borderRadius['value'],
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    label: Text(
                      e,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
