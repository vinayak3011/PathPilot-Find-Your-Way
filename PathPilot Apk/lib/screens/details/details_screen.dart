import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:pathpilot/models/update.dart';

import 'components/top_rounded_container.dart';
import 'components/update_description.dart';
import 'components/update_images.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UpdatesDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as UpdatesDetailsArguments;
    final update = agrs.update;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          ),
        ],
      ),
      body: ListView(
        children: [
          updateImages(update: update),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                UpdateDescription(
                  upadte: update,
                  pressOnSeeMore: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpdatesDetailsArguments {
  final Update update;

  UpdatesDetailsArguments({required this.update});
}
