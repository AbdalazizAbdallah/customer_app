import 'dart:math' as math; // import this

import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/images_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/pages/filter_screen/contollers/filter_type_contollers.dart';
import 'package:customer_app/ui/pages/filter_screen/widgets/chip_popular_filter_widget.dart';
import 'package:customer_app/ui/pages/filter_screen/widgets/filter_type_widget.dart';
import 'package:customer_app/ui/pages/filter_screen/widgets/provide_service_filter_widget.dart';
import 'package:customer_app/ui/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../widgets/app_bar_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(title: 'filter'.tr),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizesApp.r16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'sort'.tr,
                style: StylesApp.headline7.copyWith(
                  color: ColorsApp.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: SizesApp.r130,
                child: GetBuilder<FilterScreenTypesController>(
                  init: FilterScreenTypesController(),
                  id: 'filter_type',
                  assignId: true,
                  builder: (filterTypeController) {
                    return ListView.builder(
                      itemCount: filterTypeController.sortFilterNames.length,
                      itemBuilder: (context, index) {
                        return FilterTypeWidget(
                          titleType:
                              filterTypeController.sortFilterNames[index],
                          colorText: filterTypeController
                                  .sortFilterNamesSelected[index]
                              ? ColorsApp.primary
                              : ColorsApp.greyLight,
                          visiable: filterTypeController
                              .sortFilterNamesSelected[index],
                          widget: getWidget(index),
                          onTap: () {
                            filterTypeController.setSelectedFilter(index);
                          },
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizesApp.r30),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text(
                        'Hide restaurants that do their own delivery',
                        style: StylesApp.body1.copyWith(
                          color: ColorsApp.blackLight,
                        ),
                      ),
                    ),
                    GetBuilder<FilterScreenTypesController>(
                      id: 'filter_switch',
                      assignId: true,
                      builder: (filterTypeController) {
                        return Switch(
                          value: filterTypeController.statusSwitch,
                          onChanged: (value) {
                            filterTypeController.setSwitchValueForFilter();
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
              Text(
                'popular_filters'.tr,
                style: StylesApp.headline7.copyWith(
                  color: ColorsApp.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GetBuilder<FilterScreenTypesController>(
                assignId: true,
                id: 'chip_value',
                builder: (filterTypeController) {
                  return Wrap(
                    children: [
                      ...filterTypeController.popularFilterStrings
                          .map((stringFilter) {
                        return ChipPopularFilterWidget(
                          functionChange: (value) {
                            filterTypeController.setValueChip(
                                value, stringFilter);
                          },
                          selectedValue: filterTypeController
                              .popularFilterSelected
                              .contains(stringFilter),
                          stringFilter: stringFilter,
                        );
                        ;
                      }).toList()
                    ],
                  );
                },
              ),
              SizedBox(
                height: SizesApp.r24,
              ),
              Text(
                'provides_service'.tr,
                style: StylesApp.headline7.copyWith(
                  color: ColorsApp.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizesApp.r16),
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: SizesApp.r16),
                      child: const ProvideServiceFilterWidget(
                        imagePath: ImagesApp.tablesTypePath,
                        selected: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: SizesApp.r16),
                      child: const ProvideServiceFilterWidget(
                        imagePath: ImagesApp.deliveryTypePath,
                        selected: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: SizesApp.r16),
                      child: const ProvideServiceFilterWidget(
                        imagePath: ImagesApp.pickupTypePath,
                        selected: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizesApp.r48,
                  vertical: SizesApp.r10,
                ),
                child: CustomButtonWidget(
                  title: 'done'.tr,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getWidget(int index) {
  switch (index) {
    case 0:
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: Icon(
          Icons.thumb_up_alt_outlined,
          color: ColorsApp.primary,
        ),
      );
    case 1:
      return SvgPicture.asset(ImagesApp.deliveryTimeTypePath);
    case 2:
      return SvgPicture.asset(ImagesApp.deliverFreeTypePath);
    default:
      return SvgPicture.asset(ImagesApp.lowestPath);
  }
}
