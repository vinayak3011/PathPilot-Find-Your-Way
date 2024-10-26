import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathpilot/screens/Search/search_bar.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor4.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pathpilot/screens/home/home_screen.dart';
import 'package:pathpilot/screens/profile/profile_screen.dart';


class InitScreen3 extends StatefulWidget {
  const InitScreen3({super.key});

  static String routeName = "////";

  @override
  State<InitScreen3> createState() => _InitScreenState();
}

List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    const SearchScreen(),
    const MapScreenFloor4(),
    const ProfileScreen()
  ];
}
List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.search),
      title: ("Search"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.location_solid),
      title: ("Map"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person),
      title: ("Profile"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

class _InitScreenState extends State<InitScreen3> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      //controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(5.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}
