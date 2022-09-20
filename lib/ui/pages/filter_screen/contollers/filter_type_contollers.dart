import 'package:get/get.dart';

enum FilterTypeEnum {
  rating,
  deliveryTime,
  deliveryFree,
  lowestPrices,
}

class FilterTypeController extends GetxController {
  List<String> namesFilter = [
    'rating'.tr,
    'delivery_time'.tr,
    'delivery_free'.tr,
    'lowest_prices'.tr,
  ];

  late String selectedFilterName;

  late List<bool> selectedFilter;

  bool statusSwitch = false;

  FilterTypeController() {
    selectedFilterName = namesFilter[0];
    selectedFilter = List.generate(4, (index) => index != 0 ? false : true);
  }

  void setSelectedFilter(int indexSelected) {
    selectedFilter =
        List.generate(4, (index) => index != indexSelected ? false : true);
    selectedFilterName = FilterTypeEnum.values[indexSelected].name;
    update(['filter_type']);
  }

  void setSwitchValueForFilter() {
    statusSwitch = !statusSwitch;
    update(['filter_switch']);
  }
}
