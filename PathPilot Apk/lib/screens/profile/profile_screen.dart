import 'package:flutter/material.dart';
import 'package:pathpilot/JsonModels/users.dart';
import 'package:pathpilot/screens/home/components/notification_screen.dart';
import 'package:pathpilot/screens/profile/components/profile_pic.dart';
import 'package:pathpilot/screens/profile/profile.dart';
import 'package:pathpilot/screens/splash/splash_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'components/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});

  @override

  Widget build(BuildContext context) {
    Users userProfile = Users(
      fullName: "Vinayak Vilaspure",
      email: "vinayakgmail.com",
      usrName: "vinayak30", password: '',
    );
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) =>  Profile(profile: userProfile),
              ),
              )
              },
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                );
              },
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            // ProfileMenu(
            //   text: "Help Center",
            //   icon: "assets/icons/Question mark.svg",
            //   press: () {},
            // ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const SplashScreen(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
