import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/incom_section.dart';

import 'my_card_section.dart';
import 'transaction_history.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({
    super.key,
  });

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
          MyCardSection(),
          Divider(
            height: 20,
          ),
          Expanded(
            child: TransactionHistory(),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: IncomSection(),
          )
        ],
      ),
    );
  }
}
