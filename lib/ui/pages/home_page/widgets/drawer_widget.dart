import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/core/routes/routes_app.dart';
import 'package:customer_app/ui/pages/home_page/controller/home_page_controller.dart';
import 'package:customer_app/ui/pages/home_page/widgets/list_tile_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Get.find<HomeScreenController>()
                      .scaffoldKey
                      .currentState!
                      .closeDrawer();
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: ColorsApp.primary,
              ),
            ),
            CircleAvatar(
              backgroundImage: const NetworkImage(
                  'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg'),
              radius: SizesApp.r48,
            ),
            SizedBox(
              height: SizesApp.r10,
            ),
            Text(
              'Jennifer Cornlic',
              style: StylesApp.subtitle2.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'jennifer1988@gmail.com',
              style: StylesApp.caption.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: SizesApp.r20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTileDrawerWidget(
                    title: 'my_order'.tr,
                    onTap: () {
                      Get.toNamed(RoutesApp.myOrderPage);
                    },
                  ),
                  ListTileDrawerWidget(
                    title: 'favorite'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'my_profile'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'delivery_address'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'payment_method'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'notifications'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'vouchers_credit'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'contact_us'.tr,
                    onTap: () {},
                  ),
                  ListTileDrawerWidget(
                    title: 'about_us'.tr,
                    onTap: () {},
                  ),
                  SizedBox(
                    height: SizesApp.r10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          maximumSize: Size(SizesApp.r80, SizesApp.r48),
                        ),
                        child: Text(
                          'logout'.tr,
                          style: StylesApp.subtitle2.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizesApp.r10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
