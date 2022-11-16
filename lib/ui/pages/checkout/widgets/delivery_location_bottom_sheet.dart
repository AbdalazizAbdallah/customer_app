import 'dart:developer';

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/widgets/header_dialogs_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

class DeliveryLocationBottomSheet extends StatelessWidget {
  const DeliveryLocationBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizesApp.r16,
        vertical: SizesApp.r4,
      ),
      child: Column(
        children: [
          HeaderDialogsWidget(
            childWidget: Text(
              'Delivary address',
              style: StylesApp.headline5.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          ListTile(
            title: Text(
              'Add new address',
              style: StylesApp.headline7,
            ),
            trailing: CircleAvatar(
              backgroundColor: ColorsApp.greyTooLight,
              radius: 15,
              child: Icon(
                Icons.add,
                color: ColorsApp.primary,
                size: 20,
              ),
            ),
          ),
          Divider(
            color: ColorsApp.grey.withOpacity(0.4),
          ),
          Visibility(
            visible: true,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'my address list',
                    style: StylesApp.headline7,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: ColorsApp.greyTooLight,
                    radius: 15,
                    child: Icon(
                      Icons.search,
                      color: ColorsApp.primary,
                      size: 20,
                    ),
                  ),
                ),
                Divider(
                  color: ColorsApp.grey.withOpacity(0.4),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Deliver to my current Location',
              style: StylesApp.headline7,
            ),
            trailing: CircleAvatar(
              backgroundColor: ColorsApp.greyTooLight,
              radius: 15,
              child: FaIcon(
                FontAwesomeIcons.paperPlane,
                color: ColorsApp.primary,
                size: 18,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
