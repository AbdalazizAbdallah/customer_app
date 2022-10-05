import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class ListTileDrawerWidget extends StatelessWidget {
  const ListTileDrawerWidget({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizesApp.r5),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.symmetric(horizontal: SizesApp.r30),
        title: Text(
          title,
          style: StylesApp.subtitle1.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
