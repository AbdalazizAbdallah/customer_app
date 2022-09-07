import 'package:customer_app/home_page.dart';
import 'package:get/get.dart';

class RoutesApp {
  static const String initialPage = '/';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: initialPage,
        page: () => const HomePage(),
      ),
    ];
  }
}
