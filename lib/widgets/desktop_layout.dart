import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';

import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: AllExpensesAndQuickImvoice(),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      flex: 2,
                      child: MyCardAndTransactionAndIncomeSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
