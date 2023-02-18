import 'package:exam/settingsbody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsPortrait extends StatefulWidget {
  const SettingsPortrait({super.key});

  @override
  State<SettingsPortrait> createState() => _SettingsPortraitState();
}

class _SettingsPortraitState extends State<SettingsPortrait> {
  @override
  Widget build(BuildContext context) {
    Size currScreenSize = MediaQuery.of(context).size;
    Orientation currOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.white30,
      ),
      drawer: Drawer(
        width: currScreenSize.width*0.5,
        child: const SideDrawer(),
      ),
      body: const SettingsBody(),
    );
  }
}