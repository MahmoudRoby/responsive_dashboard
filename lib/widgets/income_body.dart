
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/incom_chart.dart';
import 'package:responsive_dashboard/widgets/income_body_details.dart';

class IncomBody extends StatelessWidget {
  const IncomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child:  IncomChart(),
          ),
        ),
        Expanded(
          child: IncomBodyDetails(),
        ),
      ],
    );
  }
}
