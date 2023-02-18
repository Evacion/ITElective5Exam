// ignore_for_file: implementation_imports

import 'package:exam/profileland.dart';
import 'package:exam/profileport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        if (currOrientation == Orientation.portrait) return const ProfilePortrait();
        return const ProfileLandscape();
      }
    );
  }
}