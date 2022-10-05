import 'package:customer_app/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:customer_app/features/auth/data/datasources/remote_data_sources.dart';
import 'package:customer_app/features/auth/data/respositories/authentication_repository_imp.dart';
import 'package:customer_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:customer_app/features/auth/domain/usecases/register_user_usecase.dart';
import 'package:customer_app/features/auth/presentation/controllers/custom_text_field_password_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/login_and_signup_page_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/login_page_controller.dart';
import 'package:customer_app/features/auth/presentation/controllers/sign_up_page_controller.dart';
import 'package:get/get.dart';

class LoginAndSignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoteDataSources(Get.find<RemoteConnectionDio>()));

    Get.lazyPut(
        () => AuthenticationRepositoryImp(Get.find<RemoteDataSources>()));

    Get.lazyPut(() => LoginUseCase(Get.find<AuthenticationRepositoryImp>()));
    Get.lazyPut(() => LoginPageController(Get.find<LoginUseCase>()));
    Get.lazyPut(
        () => RegisterUserUseCase(Get.find<AuthenticationRepositoryImp>()));
    Get.lazyPut(() => SignUpPageController(Get.find<RegisterUserUseCase>()));

    Get.create(() => CustomTextFieldPasswordController());
    Get.lazyPut(() => LoginAndSignUpPageController());
  }
}
