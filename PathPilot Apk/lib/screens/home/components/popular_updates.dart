import 'package:flutter/material.dart';
import 'package:pathpilot/components/updates_card.dart';

import '../../../models/update.dart';
import '../../details/details_screen.dart';
import '../../updates/updates_screen.dart';
import 'section_title.dart';

class Popularupdates extends StatelessWidget {
  const Popularupdates({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Updates",
            press: () {
              Navigator.pushNamed(context, UpcomingScreen.routeName);
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoUpdates.length,
                    (index) {
                  if (demoUpdates[index].isPopular) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: UpdatesCard(
                        update: demoUpdates[index],
                        onPress: () {
                          if (Navigator.of(context, rootNavigator: true).canPop()) {
                            Navigator.of(context, rootNavigator: true).pushNamed(
                              DetailsScreen.routeName,
                              arguments: UpdatesDetailsArguments(
                                update: demoUpdates[index],
                              ),
                            );
                          } else {
                            // Handle this case appropriately, maybe show a snackbar
                            print("Can't navigate, no Navigator available.");
                          }
                        },
                      ),
                    );
                  }

                  return const SizedBox.shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
