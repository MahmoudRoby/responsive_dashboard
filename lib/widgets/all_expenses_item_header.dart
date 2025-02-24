
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: SvgPicture.asset(
            image,
            //  color: const Color(0xffFAFAFA),
          ),
        ),
        const Spacer(),
        Transform.rotate(angle: 3.1,
        child: const Icon(Icons.arrow_back_ios_new))
      ],
    );
  }
}
