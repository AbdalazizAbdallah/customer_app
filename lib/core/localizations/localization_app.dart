import 'package:get/get.dart';

import 'ar.dart';
import 'en.dart';

class LocalizationApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': arEg,
        'en': enUs,
      };
}
