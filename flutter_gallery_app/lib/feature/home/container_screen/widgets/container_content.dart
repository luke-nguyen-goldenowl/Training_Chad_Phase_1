import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/container_screen/cubit/container_cubit.dart';

class ContainerContent extends StatelessWidget {
  const ContainerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<ContainerCubit, ContainerState>(
      buildWhen: (p, c) =>
          p.backgroundOption['value'] != c.backgroundOption['value'] ||
          p.borderRadiusOption['value'] != c.borderRadiusOption['value'] ||
          p.borderOption != c.borderOption ||
          p.boxShadowOption != c.boxShadowOption ||
          p.blendModeOption != c.blendModeOption,
      builder: (context, state) => Center(
        child: Container(
            width: screenWidth * 0.7,
            height: screenWidth * 0.7,
            decoration: BoxDecoration(
              color: state.backgroundOption['value'],
              borderRadius: state.borderRadiusOption['value'],
              border: state.borderOption
                  ? Border.all(
                      color: Colors.red,
                      width: 5,
                    )
                  : null,
              boxShadow: [
                state.boxShadowOption
                    ? BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    : const BoxShadow(),
              ],
              backgroundBlendMode: state.blendModeOption,
            )),
      ),
    );
  }
}
