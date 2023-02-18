import 'package:exam/dashboardbody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/material.dart';

class DashboardPortrait extends StatefulWidget {
  const DashboardPortrait({super.key});

  @override
  State<DashboardPortrait> createState() => _DashboardPortraitState();
}

class _DashboardPortraitState extends State<DashboardPortrait> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size currScreenSize = MediaQuery.of(context).size;
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.white30,
      ),
      drawer: Drawer(
        width: currScreenSize.width*0.5,
        child: const SideDrawer(),
      ),
      body: const DashboardBody(),
    );
  }
}