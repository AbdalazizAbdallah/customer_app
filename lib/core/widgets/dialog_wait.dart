import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class DialogWait extends StatelessWidget {
  const DialogWait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: ColorsApp.transparent,
      content: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(SizesApp.r10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                SizedBox(
                  width: SizesApp.r10,
                ),
                Text('please_waiting'.tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
