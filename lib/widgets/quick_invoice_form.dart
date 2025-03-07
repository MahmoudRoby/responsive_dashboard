import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_text_widget.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: QuickInvoiceTextWidget(title: 'Customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceTextWidget(title: 'Customer Email '),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(hintText: 'Type customer name'),
            ),
            Expanded(
              child: CustomTextField(hintText: 'Type customer name'),
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Expanded(
              child: QuickInvoiceTextWidget(title: 'Item name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceTextWidget(title: 'Item mount'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(hintText: 'Type customer name'),
            ),
            Expanded(
              child: CustomTextField(hintText: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backgroundColor: Color(0xffffffff),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                textColor: Color(0xffffffff),
                text: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
