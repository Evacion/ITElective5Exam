// ignore_for_file: implementation_imports

import 'package:exam/settingsland.dart';
import 'package:exam/settingsport.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
        if (currOrientation == Orientation.portrait) return const SettingsPortrait();
        return const SettingsLandscape();
      }
    );
  }
}