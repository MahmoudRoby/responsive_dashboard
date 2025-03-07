import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout( {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickImvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionAndIncomeSection(),
        ],
      ),
    );
  }
}
