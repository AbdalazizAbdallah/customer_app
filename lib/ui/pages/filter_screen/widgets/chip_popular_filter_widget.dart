import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class ChipPopularFilterWidget extends StatelessWidget {
  const ChipPopularFilterWidget({
    Key? key,
    required this.stringFilter,
    required this.selectedValue,
    required this.functionChange,
  }) : super(key: key);

  final String stringFilter;
  final bool selectedValue;
  final void Function(bool)? functionChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: SizesApp.r16, top: SizesApp.r16),
      child: ChoiceChip(
        label: Text(
          stringFilter,
          style: StylesApp.body1.copyWith(
              color: selectedValue ? ColorsApp.primary : ColorsApp.grey),
        ),
        selected: selectedValue,
        onSelected: functionChange,
        // disabledColor: ColorsApp.white,
        backgroundColor: ColorsApp.white,
        selectedColor: ColorsApp.white,
        labelPadding: EdgeInsets.symmetric(
          vertical: SizesApp.r10,
          horizontal: SizesApp.r24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizesApp.r5),
          side: BorderSide(
            color: selectedValue ? ColorsApp.primary : ColorsApp.grey,
            width: 1,
          ),
        ),
      ),
    );
  }
}
