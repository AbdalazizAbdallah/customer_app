import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

AppBar appBarGoogleMap = AppBar(
  backgroundColor: ColorsApp.transparent,
  elevation: 0,
  title: Text(
    'Location',
    style: StylesApp.headline6.copyWith(
      fontWeight: FontWeight.w600,
    ),
  ),
  centerTitle: true,
  leading: InkResponse(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(SizesApp.r10),
      child: CircleAvatar(
        backgroundColor: ColorsApp.white,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 5),
          child: Icon(
            Icons.arrow_back_ios,
            color: ColorsApp.primary,
            size: 20,
          ),
        ),
      ),
    ),
  ),
  actions: [
    InkResponse(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(SizesApp.r10),
        child: CircleAvatar(
          backgroundColor: ColorsApp.white,
          child: Icon(
            Icons.phone,
            color: ColorsApp.primary,
            size: 20,
          ),
        ),
      ),
    ),
  ],
);
