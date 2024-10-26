// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '3D Model Viewer',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ImageViewer(),
//     );
//   }
// }
//
// class ImageViewer extends StatefulWidget {
//   const ImageViewer({super.key});
//
//   @override
//   _ImageViewerState createState() => _ImageViewerState();
// }
//
// class _ImageViewerState extends State<ImageViewer> {
//   int _selectedIndex = 0;
//
//   // List of 3D model paths
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> modelPaths = [
//       const Expanded(
//         child:  ModelViewer(
//           src: 'assets/maps/staircase1/map1.glb',
//           alt: "3D Model",
//           autoPlay: true,
//           cameraControls: true,
//         ),
//       ),
//       const Expanded(
//         // Display the selected 3D model
//         child:  ModelViewer(
//           src:'assets/maps/staircase1/Map1 to library.glb',
//           alt: "3D Model",
//           autoPlay: true,
//           cameraControls: true,
//         ),
//       ),
//       const Expanded(
//         // Display the selected 3D model
//         child:  ModelViewer(
//           src: 'assets/maps/staircase1/Map1 to auditorium.glb',
//           alt: "3D Model",
//           autoPlay: true,
//           cameraControls: true,
//         ),
//       ),
//       // Add more model paths as needed
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('3D Model Viewer'),
//       ),
//       body: Column(
//         children: [
//           modelPaths[_selectedIndex],
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Show previous model
//                   setState(() {
//                     _selectedIndex = (_selectedIndex - 1) % modelPaths.length;
//                     if (_selectedIndex < 0) {
//                       _selectedIndex = modelPaths.length - 1;
//                     }
//                   });
//                 },
//                 child: const Icon(Icons.arrow_back),
//               ),
//               const SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Show next model
//                   setState(() {
//                     _selectedIndex = (_selectedIndex + 1) % modelPaths.length;
//                   });
//                 },
//                 child: const Icon(Icons.arrow_forward),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
