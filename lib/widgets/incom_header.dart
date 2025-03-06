import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class IncomHeader extends StatelessWidget {
  const IncomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: ShapeDecoration(
        color: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'Income',
            style: AppStyle.styleSemiBold20,
          ),
          const Spacer(),
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffffffff),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const RangOption(),
          )
        ],
      ),
    );
  }
}
