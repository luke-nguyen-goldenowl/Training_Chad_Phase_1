import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gallery_app/feature/home/row_column_expanded/cubit/row_column_expanded_cubit.dart';

class RowColumnExpandedContent extends StatelessWidget {
  const RowColumnExpandedContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnExpandedCubit, RowColumnExpandedState>(
      buildWhen: (p, c) =>
          p.crossAxisAlignmentOption != c.crossAxisAlignmentOption ||
          p.mainAxisAlignmentOption != c.mainAxisAlignmentOption ||
          p.mainAxisSizeOption != c.mainAxisSizeOption ||
          p.rowColumnOption != c.rowColumnOption ||
          p.textBaselineOption != c.textBaselineOption ||
          p.textDirectionOption != c.textDirectionOption ||
          p.verticalDirectionOption != c.verticalDirectionOption,
      builder: (context, state) {
        return Expanded(
          flex: 5,
          child: state.rowColumnOption == 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: Row(
                        mainAxisSize: state.mainAxisSizeOption,
                        mainAxisAlignment: state.mainAxisAlignmentOption,
                        crossAxisAlignment: state.crossAxisAlignmentOption,
                        verticalDirection: state.verticalDirectionOption,
                        textDirection: state.textDirectionOption,
                        textBaseline: state.textBaselineOption,
                        children: [
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 50, height: 50),
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 100, height: 100),
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 50, height: 50),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.yellow,
                      child: Column(
                        mainAxisSize: state.mainAxisSizeOption,
                        mainAxisAlignment: state.mainAxisAlignmentOption,
                        crossAxisAlignment: state.crossAxisAlignmentOption,
                        verticalDirection: state.verticalDirectionOption,
                        textDirection: state.textDirectionOption,
                        textBaseline: state.textBaselineOption,
                        children: [
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 50, height: 50),
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 100, height: 100),
                          Image.asset('assets/icons/row_column_icon.png',
                              width: 50, height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
