import 'package:customer_app/core/constants/strings_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OnesignalConfig {
  static Future<void> initOneSignal() async {
    await OneSignal.shared.setAppId(dotenv.get(StringsApp.onesignalId));

    await OneSignal.shared.promptUserForPushNotificationPermission(
      fallbackToSettings: true,
    );
  }

  static Future<String?> getOnesignalPlayerId() async {
    final status = await OneSignal.shared.getDeviceState();
    final String? osUserID = status?.userId;
    return osUserID;
  }

  static Future<String?> getOnesignalToken() async {
    final status = await OneSignal.shared.getDeviceState();
    final String? pushToken = status?.pushToken;
    return pushToken;
  }
}
