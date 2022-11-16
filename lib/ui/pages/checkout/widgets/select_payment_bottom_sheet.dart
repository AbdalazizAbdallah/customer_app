import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectPaymentBottomSheet extends StatelessWidget {
  const SelectPaymentBottomSheet({
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
          ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.googlePay,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(
                  width: SizesApp.r10,
                ),
                Text(
                  'Google pay',
                  style: StylesApp.headline6,
                )
              ],
            ),
            trailing: Icon(
              Icons.check,
              color: ColorsApp.primary,
              size: 20,
            ),
          ),
          const Spacer(),
          ListTile(
            title: Text(
              'Add Payment method',
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
          ListTile(
            title: Text(
              'Scan your card',
              style: StylesApp.headline7,
            ),
            trailing: CircleAvatar(
              backgroundColor: ColorsApp.greyTooLight,
              radius: 15,
              child: Icon(
                Icons.credit_card,
                color: ColorsApp.primary,
                size: 20,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
