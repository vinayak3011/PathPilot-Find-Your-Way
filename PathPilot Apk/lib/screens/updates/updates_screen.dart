import 'package:flutter/material.dart';
import 'package:pathpilot/components/updates_card.dart';
//import 'package:pathpilot/models/update.dart';
import 'package:pathpilot/models/update.dart';
import '../details/details_screen.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  static String routeName = "/updates";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upcoming Events"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: demoUpdates.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => UpdatesCard(
              update: demoUpdates[index],
              onPress: () => Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: UpdatesDetailsArguments(update: demoUpdates[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
