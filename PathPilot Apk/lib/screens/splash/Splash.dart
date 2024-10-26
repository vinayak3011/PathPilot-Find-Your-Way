import 'package:pathpilot/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:pathpilot1/WelcomeScreen.dart';
//import 'package:pathpilot/WelcomeScreen.dart';
//import 'package:pathpilot/loginScreen.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
//import 'home.dart';

class Splash extends StatefulWidget {
  static String routeName = "/splash";

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigate_home();
  }
  _navigate_home() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushNamed(context, SplashScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pathpilot logo.png',height: 350,width: 350,),
            //Container(height: 250, width: 250, color: Colors.blue),
            // const Text(
            //   'Path-Pilot',
            //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            // ),
            // const Text(
            //   "'Find Your Way'",
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            // ),
          ],
        ),
      ),
    );
  }
}