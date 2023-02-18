import 'package:exam/profilebody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileLandscape extends StatefulWidget {
  const ProfileLandscape({super.key});

  @override
  State<ProfileLandscape> createState() => _ProfileLandscapeState();
}

class _ProfileLandscapeState extends State<ProfileLandscape> {
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
            body: ProfileBody(),
          ),
        ),
      ],
    );
  }
}