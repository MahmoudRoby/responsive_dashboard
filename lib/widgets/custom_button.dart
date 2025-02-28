
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });
  final Color? textColor, backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2)),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyle.styleSemiBold18.copyWith(color: textColor)
        ),
      ),
    );
  }
}
