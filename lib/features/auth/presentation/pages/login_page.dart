import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/core/widgets/dialog_wait.dart';
import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_password.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.create(
      () => CustomTextFieldPasswordController(),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizesApp.r40),
        child: Column(
          children: [
            CustomTextFieldWidget(
              controllerTextField: TextEditingController(),
              hintText: 'email'.tr,
              prefixIcon: Icons.person,
              myKeyboardType: TextInputType.name,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldPassword(
              controllerTextField: TextEditingController(),
              hintText: 'password'.tr,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            Row(
              children: [
                Text(
                  'for_get_password'.tr,
                  style: StylesApp.subtitle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'click_here'.tr,
                    style: StylesApp.subtitle2.copyWith(
                      color: ColorsApp.primary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'remember_me'.tr,
                  style: StylesApp.subtitle2,
                ),
                Checkbox(
                  activeColor: ColorsApp.primary,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(
              height: SizesApp.r30,
            ),
            CustomButtonWidget(
              title: 'login'.tr,
              onPressed: () {
                Get.dialog(
                  const DialogWait(),
                );
              },
            ),
            SizedBox(
              height: SizesApp.r30,
            ),
            Text(
              'login_by'.tr,
              style: StylesApp.subtitle2.copyWith(
                color: ColorsApp.grey.withOpacity(0.65),
              ),
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: ColorsApp.googleColor,
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: ColorsApp.white,
                    ),
                    onPressed: () {
                      debugPrint('google');
                    },
                  ),
                ),
                Card(
                  color: ColorsApp.facebookColor,
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: ColorsApp.white,
                    ),
                    onPressed: () {
                      debugPrint('facebook');
                    },
                  ),
                ),
                Card(
                  color: ColorsApp.twitterColor,
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: ColorsApp.white,
                    ),
                    onPressed: () {
                      debugPrint('twitter');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
