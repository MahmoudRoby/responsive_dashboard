
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/widgets/desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayout: (context) =>  const SizedBox(height: 100,),
        tabletLayout: (context) => const SizedBox(height: 100,),
        desktopLayout: (context) =>  DesktopLayout(context),
      ),
    );
  }
}