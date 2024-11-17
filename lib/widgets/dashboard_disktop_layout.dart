import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardDisktopLayout extends StatelessWidget {
  const DashboardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}