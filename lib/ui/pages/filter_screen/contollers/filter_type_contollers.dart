import 'package:get/get.dart';

enum FilterSortTypesEnum {
  rating,
  deliveryTime,
  deliveryFree,
  lowestPrices,
}

class FilterScreenTypesController extends GetxController {
  List<String> sortFilterNames = [
    'rating'.tr,
    'delivery_time'.tr,
    'delivery_free'.tr,
    'lowest_prices'.tr,
  ];
  late List<bool> sortFilterNamesSelected;

  bool statusSwitch = false;

  List<String> popularFilterStrings = [
    'Burritos',
    'Noodles',
    'Pizza',
    'Burgers',
    'Chicken',
  ];
  List<String> popularFilterSelected = [];

  FilterScreenTypesController() {
    sortFilterNamesSelected =
        List.generate(4, (index) => index != 0 ? false : true);
  }

  void setSelectedFilter(int indexSelected) {
    sortFilterNamesSelected =
        List.generate(4, (index) => index != indexSelected ? false : true);
    update(['filter_type']);
  }

  void setSwitchValueForFilter() {
    statusSwitch = !statusSwitch;
    update(['filter_switch']);
  }

  void setValueChip(bool value, String stringSelected) {
    if (value) {
      popularFilterSelected.add(stringSelected);
    } else {
      popularFilterSelected.removeWhere((element) => element == stringSelected);
    }
    print(popularFilterSelected.join(','));
    update(['chip_value']);
  }
}
