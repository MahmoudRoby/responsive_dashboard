import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/incom_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickImvoice(),
                SizedBox(
                  height: 24,
                ),
                MyCardAndTransactionAndIncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
