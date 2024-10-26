// import 'package:flutter/material.dart';
// import 'package:flutter_3d_model/flutter_3d_model.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: MainHome(),
//   ));
// }
//
// class MainHome extends StatefulWidget {
//   const MainHome({super.key});
//
//   @override
//   State<MainHome> createState() => _MainHomeState();
// }
//
// class _MainHomeState extends State<MainHome> {
//   int _selectedIndex = 0;
//
//   final List<String> _tabTitles = [
//     "Model 1",
//     "Model 2",
//     "Model 3",
//   ];
//
//   final List<String> _modelPaths = [
//     "assets/map/Map1.glb",
//     "assets/map/map2.glb",
//     "assets/map/map3.glb",
//   ];
//
//   void _onTabSelected(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('3D Model Viewer'),
//       ),
//       body: Column(
//         children: [
//           TabBar(
//             tabs: _tabTitles
//                 .map((title) => Tab(
//               text: title,
//             ))
//                 .toList(),
//             onTap: _onTabSelected,
//           ),
//           Expanded(
//             child: ThreeDModel(
//               path: _modelPaths[_selectedIndex],
//               scale: 0.5, // Adjust scale as needed
//               rotationY: 45, // Adjust rotation angle as needed
//               zoom: 50, // Adjust zoom level as needed
//               onModelLoad: (value) {
//                 print("3D Model Loaded: $value");
//               },
//               onError: (error) {
//                 print("Error while loading the model: $error");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
