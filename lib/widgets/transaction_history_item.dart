
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyle.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.subtitle,
          style: AppStyle.styleRegular16(context),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyle.styleSemiBold20(context).copyWith(
              color: transactionHistoryModel.isDrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}