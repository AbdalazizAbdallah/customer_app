import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginAndSignUpPage extends StatelessWidget {
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
              'please to order you shoud login',
              style: StylesApp.subtitle2.copyWith(
                color: ColorsApp.greyLight,
              ),
            ),
            SizedBox(
              height: SizesApp.r16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.primary,
                    padding: EdgeInsets.symmetric(
                      horizontal: SizesApp.r30,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(SizesApp.r20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'login'.tr,
                    style: StylesApp.subtitle2.copyWith(
                      color: ColorsApp.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizesApp.r25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.greyTooLight,
                    padding: EdgeInsets.symmetric(
                      horizontal: SizesApp.r30,
                    ),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(SizesApp.r20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'sign_up'.tr,
                    style: StylesApp.subtitle2.copyWith(
                      color: ColorsApp.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizesApp.r20,
            ),
            LoginPage(),
          ],
        ),
      ),
    );
  }
}
