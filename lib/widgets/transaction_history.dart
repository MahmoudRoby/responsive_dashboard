import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16,
        ),
        Expanded(child: TransactionHistoryList()),
      ],
    );
  }
}

