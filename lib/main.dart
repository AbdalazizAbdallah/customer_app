import 'package:customer_app/core/constants/strings_app.dart';
import 'package:customer_app/core/constants/themes_app.dart';
import 'package:customer_app/core/dependency.dart';
import 'package:customer_app/features/auth/presentation/bindings/login_and_signup_page_bindings.dart';
import 'package:customer_app/features/auth/presentation/pages/login_and_signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/localizations/localization_app.dart';

void main() async {
  await Dependency.initGlobalDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: StringsApp.titleApp,
          theme: ThemesApp.light,
          translations: LocalizationApp(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          darkTheme: ThemesApp.dark,
          themeMode: ThemeMode.light,
          home: LoginAndSignUpPage(),
          initialBinding: LoginAndSignupPageBinding(),
          // initialRoute: RoutesApp.initialPage,
          // getPages: RoutesApp.getPages(),
        );
      },
    );
  }
}
