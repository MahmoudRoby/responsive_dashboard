import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/widgets/transaction_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022',
        amount: r'$20,129',
        isDrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isDrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionHistoryItem(
              transactionHistoryModel: e,
            ),
          )
          .toList(),
    );
    //  ListView.builder(

    //   itemCount: 3,
    //   itemBuilder: (context, index) {
    //     return TransactionHistoryItem(transactionHistoryModel: items[index]);
    //   },
    // );
  }
}
