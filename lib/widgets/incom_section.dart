import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/incom_header.dart';
import 'package:responsive_dashboard/widgets/income_body.dart';

class IncomSection extends StatelessWidget {
  const IncomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomHeader(),
        SizedBox(
          height: 16,
        ),
        IncomBody()
      ],
    );
  }
}
