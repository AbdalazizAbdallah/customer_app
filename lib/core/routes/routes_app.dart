import 'package:customer_app/features/auth/presentation/bindings/login_and_signup_page_bindings.dart';
import 'package:customer_app/features/auth/presentation/pages/login_and_signup_page.dart';
import 'package:customer_app/ui/pages/filter_screen/screens/filter_screen.dart';
import 'package:customer_app/ui/pages/google_map/google_map.dart';
import 'package:customer_app/ui/pages/home_page/bindings/home_page_binding.dart';
import 'package:customer_app/ui/pages/home_page/pages/home_screen_restaurant.dart';
import 'package:customer_app/ui/pages/my_order/pages/my_order_page.dart';
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
  static const String loginAndSignUpPage = '/LoginAndSignUpPage';
  static const String myOrderPage = '/myOrderPage';
  static const String mapSample = '/mapSample';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: homeScreen,
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
      GetPage(
        name: loginAndSignUpPage,
        page: () => const LoginAndSignUpPage(),
        binding: LoginAndSignupPageBinding(),
      ),
      GetPage(
        name: myOrderPage,
        page: () => const MyOrderPage(),
      ),
      GetPage(
        name: initialPage,
        page: () => const MapSample(),
      ),
    ];
  }
}
