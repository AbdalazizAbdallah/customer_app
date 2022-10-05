import 'package:customer_app/core/storages/local_storage/local_storage.dart';
import 'package:customer_app/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:customer_app/core/utils/onesignal_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dependency {
  static Future<void> initGlobalDependency() async {
    await dotenv.load(fileName: 'assets/.env');
    await LocalStorage().initStorage();
    await OnesignalConfig.initOneSignal();
    Get.put(RemoteConnectionDio());
  }
}
