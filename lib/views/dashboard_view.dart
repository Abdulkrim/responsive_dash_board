import 'package:flutter/material.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/dashboard_disktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer: MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDisktopLayout()),
    );
  }
}
