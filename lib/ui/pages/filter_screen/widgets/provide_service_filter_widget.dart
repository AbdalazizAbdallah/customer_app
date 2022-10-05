import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProvideServiceFilterWidget extends StatelessWidget {
  const ProvideServiceFilterWidget({
    Key? key,
    required this.selected,
    required this.imagePath,
  }) : super(key: key);

  final bool selected;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      selectedColor: ColorsApp.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizesApp.r80),
      ),
      selected: selected,
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      backgroundColor: ColorsApp.grey,
      label: Padding(
        padding: EdgeInsets.all(SizesApp.r10),
        child: SvgPicture.asset(
          imagePath,
          color: ColorsApp.white,
          height: SizesApp.r20,
          width: SizesApp.r20,
        ),
      ),
    );
  }
}
