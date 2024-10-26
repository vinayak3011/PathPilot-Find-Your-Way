import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor3.dart';
import 'package:pathpilot/screens/map/Floors/map_screen_floor5.dart';

class OrangeRoom1 extends StatefulWidget {
  static String routeName = "OrangeRoom1"
  ;
  const OrangeRoom1({super.key,int? currentindex});

  @override
  State<OrangeRoom1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OrangeRoom1> {

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
          const SizedBox(height: 4,),
          FloatingActionButton.small(
            onPressed: ()async{
              //print('Textures : $availableTextures -- Length : ${availableTextures.length}');
              // chosenTexture = await showPickerDialog(availableTextures,chosenTexture);
              controller.setTexture(textureName: chosenTexture ?? '');
            },
            child: const Icon(Icons.list_alt_rounded),
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
        child: Expanded(
          //Index 0
          child: Flutter3DViewer(
            controller: controller,
            src: 'assets/StairCase1/map1+to+orange+room.glb',
          ),
        ),
      ),
    );
  }
}