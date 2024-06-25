part of 'row_column_expanded_cubit.dart';

class RowColumnExpandedState {
  final int rowColumnOption;
  final MainAxisSize mainAxisSizeOption;
  final MainAxisAlignment mainAxisAlignmentOption;
  final CrossAxisAlignment crossAxisAlignmentOption;
  final VerticalDirection verticalDirectionOption;
  final TextDirection textDirectionOption;
  final TextBaseline textBaselineOption;

  RowColumnExpandedState({
    required this.rowColumnOption,
    required this.mainAxisSizeOption,
    required this.mainAxisAlignmentOption,
    required this.crossAxisAlignmentOption,
    required this.verticalDirectionOption,
    required this.textDirectionOption,
    required this.textBaselineOption,
  });

  RowColumnExpandedState copyWith({
    int? rowColumnOption,
    MainAxisSize? mainAxisSizeOption,
    MainAxisAlignment? mainAxisAlignmentOption,
    CrossAxisAlignment? crossAxisAlignmentOption,
    VerticalDirection? verticalDirectionOption,
    TextDirection? textDirectionOption,
    TextBaseline? textBaselineOption,
  }) {
    return RowColumnExpandedState(
      rowColumnOption: rowColumnOption ?? this.rowColumnOption,
      mainAxisSizeOption: mainAxisSizeOption ?? this.mainAxisSizeOption,
      mainAxisAlignmentOption: mainAxisAlignmentOption ?? this.mainAxisAlignmentOption,
      crossAxisAlignmentOption: crossAxisAlignmentOption ?? this.crossAxisAlignmentOption,
      verticalDirectionOption: verticalDirectionOption ?? this.verticalDirectionOption,
      textDirectionOption: textDirectionOption ?? this.textDirectionOption,
      textBaselineOption: textBaselineOption ?? this.textBaselineOption,
    );
  }
}
