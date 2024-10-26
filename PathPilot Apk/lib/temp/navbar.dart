import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pathpilot/screens/favorite/favorite_screen.dart';
import 'package:pathpilot/screens/home/home_screen.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor4.dart';
import 'package:pathpilot/screens/profile/profile_screen.dart';


class InitScreen2 extends StatefulWidget {
  const InitScreen2({super.key});

  static String routeName = "///";

  @override
  State<InitScreen2> createState() => _InitScreenState();
}

final pages = [
  const HomeScreen(),
  const SearchScreen(),
  const MapScreenFloor4(),
  //MapScreenFloor4(),
  const ProfileScreen()
];
class _InitScreenState extends State<InitScreen2> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 0),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.black,
            activeColor: Colors.red,
            //tabBackgroundColor: Colors.grey,
            gap: 8,
            padding: const EdgeInsets.all(16),
            onTabChange: (index){
              setState(() {
                currentindex = index;
              });

            },
            tabs: const [
              GButton(icon: Icons.home,
              text: 'Home',
              ),
              GButton(icon: Icons.search_outlined,
              text: 'Search',
              ),
              GButton(icon: Icons.location_on_outlined,
              text: 'Map',
              ),
              GButton(icon: Icons.person,
              text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

}