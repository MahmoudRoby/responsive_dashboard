import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Balance',
        image: Assets.imagesBalance),
    AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Income',
        image: Assets.imagesIncome),
    AllExpensesItemModel(
        date: 'April 2022',
        price: r'$20,129',
        title: 'Expenses',
        image: Assets.imagesExpenses),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(items: items),
        ],
      ),
    );
  }
}

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({
    super.key,
    required this.items,
  });

  final List<AllExpensesItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:index==1? 12 :0),
            child: AllExpensesItem(itemModel: item),
          ),
        );
        // if (index == 1) {
        //   return Expanded(child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 12),
        //     child: AllExpensesItem(itemModel: item),
        //   ));
        // } else {
        //   return Expanded(child: AllExpensesItem(itemModel: item));
        // }
      }).toList(),
    );

    //Row(children:items.map((e)=>Expanded(child: AllExpensesItem(itemModel: e))).toList());
  }
}
