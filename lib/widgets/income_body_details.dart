
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/widgets/incom_body_item.dart';

class IncomBodyDetails extends StatelessWidget {
  const IncomBodyDetails({super.key});
  static const List<ItemDetailModel> items = [
    ItemDetailModel(
        color: Color(0xff064061), title: 'Design service', value: '40%'),
    ItemDetailModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailModel(
        color: Color(0xff064061), title: 'Product royalti', value: '22%'),
    ItemDetailModel(color: Color(0xffE2DECD), title: 'Other', value: '20%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
      return IncomBodyItem(itemDetailModel: items[index]);
    });
  }
}
