import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/features/auth/presentation/controllers/login_and_signup_page_controller.dart';
import 'package:customer_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class LoginAndSignUpPage extends GetView<LoginAndSignUpPageController> {
  const LoginAndSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                ImagesApp.logoPath,
                height: SizesApp.r105,
              ),
            ),
            SizedBox(
              height: SizesApp.r16,
            ),
            Text(
              'message_login'.tr,
              style: StylesApp.subtitle2.copyWith(
                color: ColorsApp.greyLight,
              ),
            ),
            SizedBox(
              height: SizesApp.r16,
            ),
            GetBuilder<LoginAndSignUpPageController>(
              builder: (logic) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.backgroundColorLogin,
                        padding: EdgeInsets.symmetric(
                          horizontal: SizesApp.r30,
                        ),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(SizesApp.r20),
                        ),
                      ),
                      onPressed: () {
                        controller.loginPage();
                      },
                      child: Text(
                        'login'.tr,
                        style: StylesApp.subtitle2.copyWith(
                          color: controller.textColorLogin,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: SizesApp.r25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.backgroundColorSignUp,
                        padding: EdgeInsets.symmetric(
                          horizontal: SizesApp.r30,
                        ),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(SizesApp.r20),
                        ),
                      ),
                      onPressed: () {
                        controller.signUpPage();
                      },
                      child: Text(
                        'sign_up'.tr,
                        style: StylesApp.subtitle2.copyWith(
                          color: controller.textColorSignUp,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: SizesApp.r20,
            ),
            GetBuilder<LoginAndSignUpPageController>(
              builder: (logic) {
                if (controller.currentPage == Pages.login) {
                  return const LoginPage();
                } else if (controller.currentPage == Pages.signup) {
                  return const SignUpPage();
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
