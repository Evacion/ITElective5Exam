// ignore_for_file: unnecessary_import, implementation_imports, avoid_print

import 'package:exam/dashboardland.dart';
import 'package:exam/dashboardport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return LayoutBuilder(
      builder: (
        BuildContext context, 
        BoxConstraints constraints,
      ) {
        print("CONTEXT == $context");
        print("CONSTRAINTS == $constraints");
        if (currOrientation == Orientation.portrait) return const DashboardPortrait();
        return const DashboardLandscape();
      }
    );
  }
}