// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pathpilot/constants.dart';
// import 'package:pathpilot/screens/favorite/favorite_screen.dart';
// import 'package:pathpilot/screens/home/home_screen.dart';
// import 'package:pathpilot/screens/map/map_floor4.dart';
// import 'package:pathpilot/screens/profile/profile_screen.dart';
//
// const Color inActiveIconColor = Color(0xFFB6B6B6);
//
// class InitScreenMap extends StatefulWidget {
//   const InitScreenMap({super.key});
//
//   static String routeName = "//";
//
//   @override
//   State<InitScreenMap> createState() => _InitScreenMapState();
// }
//
// class _InitScreenMapState extends State<InitScreenMap> {
//   int currentSelectedIndexMap = 2;
//
//   void updateCurrentIndex(int index) {
//     setState(() {
//       currentSelectedIndexMap = index;
//     });
//   }
//
//   final pages = [
//     const HomeScreen(),
//     const SearchScreen(),
//     const mapScreen1(),
//     const ProfileScreen()
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentSelectedIndexMap],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: updateCurrentIndex,
//         currentIndex: currentSelectedIndexMap,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               "assets/icons/Shop Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 inActiveIconColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             activeIcon: SvgPicture.asset(
//               "assets/icons/Shop Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 kPrimaryColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               "assets/icons/Search Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 inActiveIconColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             activeIcon: SvgPicture.asset(
//               "assets/icons/Search Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 kPrimaryColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               "assets/icons/Location point.svg",
//               colorFilter: const ColorFilter.mode(
//                 inActiveIconColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             activeIcon: SvgPicture.asset(
//               "assets/icons/Location point.svg",
//               colorFilter: const ColorFilter.mode(
//                 kPrimaryColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             label: "Map",
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(
//               "assets/icons/User Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 inActiveIconColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             activeIcon: SvgPicture.asset(
//               "assets/icons/User Icon.svg",
//               colorFilter: const ColorFilter.mode(
//                 kPrimaryColor,
//                 BlendMode.srcIn,
//               ),
//             ),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }
