import 'package:customer_app/home_page.dart';
import 'package:customer_app/ui/pages/onboarding_screen/bindings/onboarding_screen_binding.dart';
import 'package:customer_app/ui/pages/onboarding_screen/pages/onboarding_screen.dart';
import 'package:customer_app/ui/pages/splash_screen.dart';
import 'package:customer_app/ui/widgets/card_resturant_widget.dart';
import 'package:get/get.dart';

class RoutesApp {
  static const String initialPage = '/';
  static const String homePage = '/homePage';
  static const String splashScreen = '/splashScreen';
  static const String onboardingScreen = '/onboardingScreen';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: homePage,
        page: () => const HomePage(),
      ),
      GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: onboardingScreen,
        page: () => const OnboardingScreen(),
        binding: OnboardingScreenBinding(),
      ),
      GetPage(
        name: initialPage,
        page: () => const CardResturantWidget(),
      ),
    ];
  }
}
