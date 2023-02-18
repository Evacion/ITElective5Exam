import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset("assets/00-logo-seal/00-logo-seal/addu-seal-colorized.png",
            scale: 5,
          ),
          const SizedBox(height: 10,),
          const Text("Community Center Asset Management System"),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.home),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                ),
                backgroundColor: Colors.white30,
              ),
              onPressed: () => {
                Navigator.pushNamed(context, '/dashboard')
              },
                label: const Text("Dashboard", style: TextStyle( fontFamily: 'Arial', fontSize: 15, color: Colors.white)
              )
            )
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.business_center),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                ),
                backgroundColor: Colors.white30,
              ),
              onPressed: () => {
                Navigator.pushNamed(context, '/settings')
              },
                label: const Text("Settings", style: TextStyle( fontFamily: 'Arial', fontSize: 15, color: Colors.white)
              )
            )
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.article_outlined),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                ),
                backgroundColor: Colors.white30,
              ),
              onPressed: () => {
                Navigator.pushNamed(context, '/profile')
              },
                label: const Text("Profile", style: TextStyle( fontFamily: 'Arial', fontSize: 15, color: Colors.white)
              )
            )
          ),
          const Spacer(),
          SizedBox(
            child: Column(
              children: [
                const Text("Powered By:"),
                //Logo,
                Image.asset("assets/00-logo-seal/00-logo-seal/arisen-lab-caption.png",
                  scale: 9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}