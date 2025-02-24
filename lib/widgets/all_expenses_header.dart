import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
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
      child: Row(
        children: [
          const Text(
            'All Expenses',
            style: AppStyle.styleSemiBold20,
          ),
          const Spacer(),
          Container(
            decoration: ShapeDecoration(
                color: const Color(0xffffffff),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                    borderRadius: BorderRadius.circular(12))),
            child: const RangOption(),
          )
        ],
      ),
    );
  }
}
