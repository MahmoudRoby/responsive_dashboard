import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/incom_chart.dart';
import 'package:responsive_dashboard/widgets/income_body_details.dart';

class IncomBody extends StatelessWidget {
  const IncomBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktop && width < 1250
        ? const SizedBox(height:200, child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: IncomChart(),
              ),
              Expanded(
                flex: 6,
                child: IncomBodyDetails(),
              ),
            ],
          );
  }
}
