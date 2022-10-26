import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/widgets/header_dialogs_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';

class ViewDetails extends StatelessWidget {
  const ViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(SizesApp.r4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HeaderDialogsWidget(
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizesApp.r25,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: ColorsApp.primary,
                    ),
                  ),
                  Text(
                    'transporter'.tr,
                    style: StylesApp.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizesApp.r4,
            ),
            SizedBox(
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  CircleAvatar(
                    radius: SizesApp.r75,
                    backgroundColor: ColorsApp.greyTooLight.withOpacity(0.50),
                    child: CircleAvatar(
                      radius: SizesApp.r43,
                      backgroundImage: const NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQctjwYFNFJZg8IV4i4U_nu98Ij4uNFK4IUgw7lvsotPyk15vxs1S4CMNwt9gMi_6bBSEU&usqp=CAU'),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Column(
                      children: [
                        Text(
                          'MOHAMED HAMED',
                          style: StylesApp.subtitle1.copyWith(
                            color: ColorsApp.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: SizesApp.r4,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'ID: ',
                            style: StylesApp.subtitle1.copyWith(
                              color: ColorsApp.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '52555',
                                style: StylesApp.subtitle1.copyWith(
                                  color: ColorsApp.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.car,
                              color: ColorsApp.primary,
                            ),
                            SizedBox(
                              width: SizesApp.r10,
                            ),
                            Text('skoda car silver'),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '09',
              style: StylesApp.headline5.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Mint to Delivery',
              style: StylesApp.caption,
            ),
            SizedBox(
              height: SizesApp.r25,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkResponse(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorsApp.greyTooLight,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: ColorsApp.white,
                      child: FaIcon(
                        FontAwesomeIcons.locationDot,
                        color: ColorsApp.warning,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizesApp.r43,
                ),
                InkResponse(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorsApp.greyTooLight,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: ColorsApp.white,
                      child: FaIcon(
                        FontAwesomeIcons.phone,
                        color: ColorsApp.primary,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: SizesApp.r25,
            ),
          ],
        ),
      ),
    );
  }
}
