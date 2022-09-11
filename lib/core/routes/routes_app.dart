import 'package:customer_app/home_page.dart';
import 'package:customer_app/ui/pages/splash_screen.dart';
import 'package:get/get.dart';

class RoutesApp {
  static const String initialPage = '/';
  static const String homePage = '/homePage';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: homePage,
        page: () => const HomePage(),
      ),
      GetPage(
        name: initialPage,
        page: () => const SplashScreen(),
      ),
    ];
  }
}
