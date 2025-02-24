
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_tiem_model.dart';
import 'package:responsive_dashboard/widgets/active_drawer_item.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.itemModel, required this.isSelected});
  final DrawerItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(itemModel: itemModel)
        : InactiveDrawerItem(itemModel: itemModel);
  }
}
