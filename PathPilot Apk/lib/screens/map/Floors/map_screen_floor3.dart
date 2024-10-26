import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pathpilot/screens/map/MapScreen/Floor%203/map_screen_3_1.dart';
import 'package:pathpilot/screens/map/MapScreen/Floor%203/map_screen_3_2.dart';
import 'package:pathpilot/screens/map/MapScreen/Floor%203/map_screen_3_3.dart';

class MapScreenFloor3 extends StatelessWidget{
  static String routeName = "MapScreenfloor3";
  const MapScreenFloor3({super.key,});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: Column(
            children: [
              Text(
                "3 F l o o r",
                style: GoogleFonts.ubuntu(fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Staircase:",
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        body:  Column(
          children: [
            //   Container(
            //       width: MediaQuery.of(context).size.width,
            //       color: Colors.deepPurple,
            //       child: const Center(child: Padding(
            //         padding: EdgeInsets.only(bottom: 2.0),
            //         child: Text("Stair Case",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,backgroundColor: Colors.deepPurple),),
            //       ))
            //   ),
            Container(
              height: kToolbarHeight + 8.0,
              padding: const EdgeInsets.only(
                  top: 16.0, right: 16.0, left: 16.0),
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: const TabBar(
                tabs: [
                  Tab( text: 'First', ),
                  Tab( text: 'Second',),
                  Tab( text: 'Third',),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
              ),
            ),
            const Expanded(
              child: TabBarView(children: [
                MapScreen31(),
                MapScreen32(),
                MapScreen33(),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}