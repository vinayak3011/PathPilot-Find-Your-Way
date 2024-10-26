import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pathpilot/screens/map/Maps/First/auditorium.dart';
import 'package:pathpilot/screens/map/Maps/First/cyber%20Staffroom.dart';
import 'package:pathpilot/screens/map/Maps/First/cyberHOD.dart';
import 'package:pathpilot/screens/map/Maps/First/cyberLab.dart';
import 'package:pathpilot/screens/map/Maps/First/female%20Restroom.dart';
import 'package:pathpilot/screens/map/Maps/First/library.dart';
import 'package:pathpilot/screens/map/Maps/First/lift.dart';
import 'package:pathpilot/screens/map/Maps/First/male%20Restroom.dart';
import 'package:pathpilot/screens/map/Maps/First/map.dart';
import 'package:pathpilot/screens/map/Maps/First/physicsLab.dart';

class MapScreen41 extends StatefulWidget {
  const MapScreen41({super.key});

  @override
  State<MapScreen41> createState() => _MainHomeState();
}

class _MainHomeState extends State<MapScreen41> with SingleTickerProviderStateMixin {
  /// List of Tab Bar Item
  List<String> items = [
    "Map",
    "Auditorium",
    "Library",
    "Cyse Lab",
    "Physics Lab",
    "Cyse HOD",
    "Lift",
    "Male Restroom",
    "Female Restroom",
    "Cyse Staffroom",
    "Orange Room"
  ];
  late TabController _tabController;
  int current = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      current = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            /// Tab Bar
            SizedBox(
              width: double.infinity,
              height: 80,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _tabController.animateTo(index);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: 100,
                          height: 55,
                          decoration: BoxDecoration(
                            color: current == index
                                ? Colors.white70
                                : Colors.white54,
                            borderRadius: current == index
                                ? BorderRadius.circular(12)
                                : BorderRadius.circular(7),
                            border: current == index
                                ? Border.all(
                                color: Colors.deepPurpleAccent,
                                width: 2.5)
                                : null,
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  items[index],
                                  style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: current == index,
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: BoxShape.circle),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),

            /// MAIN BODY
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  Map1(),
                  Auditorium1(),
                  Library1(),
                  CyseLab1(),
                  PhysicsLab1(),
                  CyseHOD1(),
                  Lift1(),
                  MaleRestroom1(),
                  FemaleRestroom1(),
                  CyseStaffroom1(),

                  // Add other screens here as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
