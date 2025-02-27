import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.iconColor,
  });
  final String image;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: SvgPicture.asset(
            image,

            //  color: const Color(0xffFAFAFA),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.1,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: iconColor,
          ),
        )
      ],
    );
  }
}
