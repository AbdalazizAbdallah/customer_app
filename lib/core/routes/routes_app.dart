import 'package:customer_app/ui/pages/filter_screen/screens/filter_screen.dart';
import 'package:customer_app/ui/pages/home_page/bindings/home_page_binding.dart';
import 'package:customer_app/ui/pages/home_page/pages/home_screen_restaurant.dart';
import 'package:customer_app/ui/pages/onboarding_screen/bindings/onboarding_screen_binding.dart';
import 'package:customer_app/ui/pages/onboarding_screen/pages/onboarding_screen.dart';
import 'package:customer_app/ui/pages/splash_screen.dart';
import 'package:get/get.dart';

class RoutesApp {
  static const String initialPage = '/';
  static const String splashScreen = '/splashScreen';
  static const String onboardingScreen = '/onboardingScreen';
  static const String homeScreen = '/homeScreen';
  static const String filterScreen = '/filterScreen';

  static List<GetPage> getPages() {
    return <GetPage>[
      // GetPage(
      //   name: initialPage,
      //   page: () => const HomePage(),
      // ),
      GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: initialPage,
        page: () => const HomeScreenRestaurant(),
        binding: HomeScreenBinding(),
      ),
      GetPage(
        name: onboardingScreen,
        page: () => const OnboardingScreen(),
        binding: OnboardingScreenBinding(),
      ),
      GetPage(
        name: filterScreen,
        page: () => const FilterScreen(),
      ),
    ];
  }
}
