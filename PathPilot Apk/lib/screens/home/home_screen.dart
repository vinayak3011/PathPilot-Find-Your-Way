import 'package:flutter/material.dart';

//import 'components/categories.dart';
import 'components/live_Event.dart';
import 'components/home_header.dart';
import 'components/popular_updates.dart';
import 'components/upcoming_event.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              HomeHeader(),
              LiveEventBanner(),
              UpcomingEvent(),
              SizedBox(height: 20),
              Popularupdates(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
