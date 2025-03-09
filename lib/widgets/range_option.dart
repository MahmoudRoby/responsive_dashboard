
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangOption extends StatelessWidget {
  const RangOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Monthly',
            style: AppStyle.styleRegular16(context),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Transform.rotate(
          angle: -1.5,
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff064061),
          ),
        )
      ],
    );
  }
}
