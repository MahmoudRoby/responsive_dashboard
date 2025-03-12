import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({
    super.key,
  });

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  // final List<AllExpensesItemModel> items;
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Balance',
        image: Assets.imagesBalance),
    const AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Income',
        image: Assets.imagesIncome),
    const AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Expenses',
        image: Assets.imagesExpenses),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .asMap()
          .entries
          .map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: AllExpensesItem(
                    itemModel: item,
                    isSelected: currentIndex == index,
                  )),
            );
            // if (index == 1) {
            //   return Expanded(child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 12),
            //     child: AllExpensesItem(itemModel: item),
            //   ));
            // } else {
            //   return Expanded(child: AllExpensesItem(itemModel: item));
            // }
          })
          // اضافة فراغ او سايز بوكس
          .expand((widget) => [widget, const SizedBox(width: 8)])
          .toList()
        ..removeLast(),
    );

    //Row(children:items.map((e)=>Expanded(child: AllExpensesItem(itemModel: e))).toList());
  }
}
