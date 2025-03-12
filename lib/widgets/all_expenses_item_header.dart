import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.iconColor,
    this.backgroundColor,
    this.imageColor,
  });
  final String image;
  final Color iconColor;
  final Color? backgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CircleAvatar(
            backgroundColor: backgroundColor??Colors.white,
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: Transform.rotate(
            angle: 3.1,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: iconColor,
            ),
          ),
        )
      ],
    );
  }
}
