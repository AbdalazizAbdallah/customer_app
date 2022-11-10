import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:customer_app/ui/widgets/adnos_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SlideAdonsItemWidget extends StatelessWidget {
  const SlideAdonsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // The end action pane is the one at the right or the bottom side.
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          CustomSlidableAction(
            padding: EdgeInsets.zero,
            flex: 2,
            onPressed: null,
            autoClose: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkResponse(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorsApp.greyLight,
                    child: Icon(
                      Icons.remove,
                      color: ColorsApp.white,
                    ),
                  ),
                ),
                Text(
                  '02',
                  style: StylesApp.subtitle1.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkResponse(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorsApp.greyLight,
                    child: Icon(
                      Icons.add,
                      color: ColorsApp.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomSlidableAction(
            flex: 1,
            onPressed: null,
            autoClose: false,
            child: Center(
              child: InkResponse(
                onTap: () {},
                child: Icon(
                  Icons.delete_outline_outlined,
                  color: ColorsApp.danger,
                ),
              ),
            ),
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: AdnosItemWidget(),
    );
  }
}
