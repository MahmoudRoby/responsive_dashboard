import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_tiem_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.itemModel,
  });

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffffffff),
      child: ListTile(
        leading: SvgPicture.asset(
          itemModel.image,
        ),
        title: Text(
          itemModel.title,
          style: AppStyle.styleRegular16,
        ),
      ),
    );
  }
}
