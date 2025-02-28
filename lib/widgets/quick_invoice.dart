import 'package:flutter/material.dart';


import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';

import 'package:responsive_dashboard/widgets/quik_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuikInvoiceHeader(),
          SizedBox(
            height: 8,
          ),
          LatestTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 18,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
