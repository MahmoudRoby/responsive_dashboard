import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indecator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomDotIndicator(
                  isActive: index == currentPageIndex,
                ),
              )),
    );
  }
}
