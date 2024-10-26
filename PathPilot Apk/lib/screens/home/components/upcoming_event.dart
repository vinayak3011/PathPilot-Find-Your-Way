import 'package:flutter/material.dart';
import 'package:pathpilot/screens/updates/updates_screen.dart';

import 'section_title.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Upcoming Event",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpcomingScreen(),
                ),
              );
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/pratishtha logo.png",
                category: "YUVA",
                numOfBrands: "CSI",
                press: () {
                  //Navigator.pushNamed(context, UpcomingScreen.routeName);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpcomingScreen(),
                    ),
                  );
                },
              ),
              SpecialOfferCard(
                image: "assets/images/pratishtha logo.png",
                category: "CODE-A-THON",
                numOfBrands: "CSI",
                press: () {
                  //Navigator.pushNamed(context, UpcomingScreen.routeName);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpcomingScreen(),
                    ),
                  );
                },
              ),
              SpecialOfferCard(
                image: "assets/images/blood Donation.png",
                category: "Blood Donation Camp",
                numOfBrands: "NSS",
                press: () {
                  //Navigator.pushNamed(context, UpcomingScreen.routeName);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpcomingScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final String numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 342,
          height: 180,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands SAKEC")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
