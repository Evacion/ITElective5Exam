import 'package:exam/dashboardbody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/material.dart';

class DashboardLandscape extends StatefulWidget {
  const DashboardLandscape({super.key});

  @override
  State<DashboardLandscape> createState() => _DashboardLandscapeState();
}

class _DashboardLandscapeState extends State<DashboardLandscape> {
  @override
  Widget build(BuildContext context) {
    Size currScreenSize = MediaQuery.of(context).size;
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return Row(
      children: [
        Drawer(
          width: currOrientation == Orientation.portrait ? currScreenSize.width*0.5 : currScreenSize.width*0.20,
          child: const SideDrawer(),
        ),
        const Expanded(
          child: Scaffold(
            body: DashboardBody(),
          ),
        ),
      ],
    );
  }
}