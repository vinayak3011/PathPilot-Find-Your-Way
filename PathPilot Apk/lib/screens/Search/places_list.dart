import 'package:flutter/material.dart';
import 'package:pathpilot/screens/Search/ProfileDescription.dart';

class PlacesList extends StatelessWidget {
  final List<Map<String, dynamic>> places;

  const PlacesList({required this.places, Key? key, required List<Map<String, dynamic>> searchResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];
        return ListTile(
          title: Text(place['name']),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileDescription(place: place, key: null,)),
            );
          },
        );
      },
    );
  }
}