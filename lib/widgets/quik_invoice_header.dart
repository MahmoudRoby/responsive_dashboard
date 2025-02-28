
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class QuikInvoiceHeader extends StatelessWidget {
  const QuikInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
