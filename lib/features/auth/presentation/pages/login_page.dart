import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/core/widgets/custom_button_widget.dart';
import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_password.dart';
import 'package:customer_app/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
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
              hintText: 'username',
              prefixIcon: Icons.person,
              myKeyboardType: TextInputType.name,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            CustomTextFieldPassword(
              controllerTextField: TextEditingController(),
              hintText: 'password',
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            Row(
              children: [
                Text(
                  'For Get your password ? ',
                  style: StylesApp.subtitle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'click here',
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
                  'Remember Me ',
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
              title: 'Login',
              onPressed: () {
                Get.dialog(
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Center(
                      child: Card(
                        color: ColorsApp.white,
                        child: Padding(
                          padding: EdgeInsets.all(SizesApp.r10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                width: SizesApp.r10,
                              ),
                              Text('waiting ...'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: SizesApp.r30,
            ),
            Text(
              'login by',
              style: StylesApp.subtitle2.copyWith(
                color: ColorsApp.grey.withOpacity(0.65),
              ),
            )
          ],
        ),
      ),
    );
  }
}
