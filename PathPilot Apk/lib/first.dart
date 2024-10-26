import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          padding: const EdgeInsets.all(50),
          height: 25,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 75,
                color: Colors.red,
              ),
              Container(
                width: 75,
                color: Colors.blue,
              ),
              Container(
                width: 75,
                color: Colors.green,
              ),
            ],
          ),
        ),

      ),

    );

  }
}
