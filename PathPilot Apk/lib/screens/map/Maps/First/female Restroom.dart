import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor3.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor5.dart';

class FemaleRestroom1 extends StatefulWidget {
  static String routeName = "FemaleRestroom1";
  const FemaleRestroom1({super.key,int? currentindex});

  @override
  State<FemaleRestroom1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FemaleRestroom1> {

  Flutter3DController controller = Flutter3DController();
  String? chosenAnimation;
  String? chosenTexture;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return GridView.count(
                  childAspectRatio: 3,
                  crossAxisCount: 2,
                );
              },
              );
            },
            child: const Icon(Icons.format_list_bulleted_outlined),
          ),
          const SizedBox(height: 4,),
          FloatingActionButton.small(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapScreenFloor5()),
              );
            },
            child: const Icon(Icons.arrow_drop_up_sharp),
          ),const SizedBox(height: 4,),
          FloatingActionButton.small(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapScreenFloor3()),
              );
            },
            child: const Icon(Icons.arrow_drop_down_sharp),
          )
        ],
      ),
      body: Center(
        child: Container(
          //Index 0
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Flutter3DViewer(
            controller: controller,
            src: 'assets/StairCase1/map1+to+female+restroom.glb',
          ),
        ),
      ),
    );
  }
}