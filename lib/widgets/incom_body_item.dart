import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';

import 'package:responsive_dashboard/utils/app_style.dart';

class IncomBodyItem extends StatelessWidget {
  const IncomBodyItem({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration:  ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailModel.color,
        ),
      ),
      // leading: CircleAvatar(
      //   backgroundColor: Color(0xff208CC8),
      //   radius: 6,
      // ),
      title:  FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailModel.title,
          style: AppStyle.styleRegular16(context),
        ),
      ),
      trailing:  FittedBox(fit: BoxFit.scaleDown,
        child: Text(
          itemDetailModel.value,
          style: AppStyle.styleMedium16(context),
        ),
      ),
    );
  }
}
