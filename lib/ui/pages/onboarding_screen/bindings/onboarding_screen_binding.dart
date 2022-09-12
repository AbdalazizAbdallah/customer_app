import 'package:customer_app/ui/pages/onboarding_screen/controllers/onboarding_screen_controlles.dart';
import 'package:get/get.dart';

class OnboardingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreenController());
  }
}
