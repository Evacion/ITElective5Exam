import 'package:exam/settingsbody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsLandscape extends StatefulWidget {
  const SettingsLandscape({super.key});

  @override
  State<SettingsLandscape> createState() => _SettingsLandscapeState();
}

class _SettingsLandscapeState extends State<SettingsLandscape> {
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
            body: SettingsBody(),
          ),
        ),
      ],
    );
  }
}