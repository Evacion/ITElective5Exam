// ignore_for_file: prefer_const_constructors
import 'package:exam/dashboard.dart';
import 'package:exam/profile.dart';
import 'package:exam/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' : (context) => MyHomePage(title: 'Exam'),
        '/dashboard': (context) => const Dashboard(),
        '/profile': (context) => const Profile(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  Size currScreenSize = MediaQuery.of(context).size;
  // Orientation currOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Spacer(),
                Card(
                  child: SizedBox(
                    height: currScreenSize.height*0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/00-logo-seal/00-logo-seal/addu-seal-colorized.png",
                            scale: 5,
                          ),
                          SizedBox(height: 10,),
                          Text("ATENEO DE DAVAO UNIVERSITY"),
                          SizedBox(height: 10,),
                          Text("Community Center Asset Management System"),
                          SizedBox(height: 10,),
                          OutlinedButton(
                            onPressed: () => {
                              Navigator.pushNamed(context, '/dashboard')
                            }, 
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Login with Gmail"),
                                Icon(Icons.mail),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          OutlinedButton(
                            onPressed: () => {
                              Navigator.pushNamed(context, '/dashboard')
                            }, 
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Login as Guest"),
                                Icon(Icons.person),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  child: Column(
                    children: [
                      Text("Powered By:"),
                      //Logo,
                      Image.asset("assets/00-logo-seal/00-logo-seal/arisen-lab-caption.png",
                        scale: 9,
                      ),
                    ],
                  ),
                ),
              ],
             ),
           ),
        ],
      ),
    );
  }
}
