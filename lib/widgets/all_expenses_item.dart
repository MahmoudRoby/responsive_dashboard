import 'package:flutter/material.dart';

import 'package:responsive_dashboard/models/all_expenses_item_model.dart';


import 'package:responsive_dashboard/widgets/active_all_expenses_item.dart';

import 'package:responsive_dashboard/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final bool isSelected;
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
