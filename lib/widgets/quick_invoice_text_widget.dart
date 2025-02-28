import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';


class QuickInvoiceTextWidget extends StatelessWidget {
  const QuickInvoiceTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyle.styleMedium16,
    );
  }
}
