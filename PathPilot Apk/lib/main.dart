import 'package:flutter/material.dart';
import 'package:pathpilot/screens/splash/Splash.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PathPilot",
      theme: AppTheme.lightTheme(context),
      initialRoute: Splash.routeName,
      routes: routes,
    );
  }
}
