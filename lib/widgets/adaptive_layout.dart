
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/tablet_layout.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 560) {
          return MobileLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return TabletLayout(context);
        } else {
          return DesktopLayout(context);
        }
      },
    );
  }
}