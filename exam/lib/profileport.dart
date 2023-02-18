import 'package:exam/profilebody.dart';
import 'package:exam/sidedrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePortrait extends StatefulWidget {
  const ProfilePortrait({super.key});

  @override
  State<ProfilePortrait> createState() => _ProfilePortraitState();
}

class _ProfilePortraitState extends State<ProfilePortrait> {
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
      body: const ProfileBody(),
    );
  }
}