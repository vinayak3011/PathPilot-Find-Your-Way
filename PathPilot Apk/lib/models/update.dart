import 'package:flutter/material.dart';

class Update {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Update({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo updates

List<Update> demoUpdates = [
  Update(
    id: 1,
    images: [
      "assets/images/volleyball.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Volley ball Team Won 2nd Prize",
    price: "12/02/24",
    description: description,
    //rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Update(
    id: 2,
    images: [
      "assets/images/cyber-thumb.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "New Lab for Cyber Security",
    price: "08/02/24",
    description: description,
    //rating: 4.1,
    isPopular: true,
  ),
  Update(
    id: 3,
    images: [
      "assets/images/pathpilot logo.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "New Feature in pathpilot",
    price: "05/02/24",
    description: description,
    //rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Update(
    id: 4,
    images: [
      "assets/images/volleyball.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Volley ball Team Won 2nd Prize",
    price: "12/02/24",
    description: description,
    //rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Update(
    id: 5,
    images: [
      "assets/images/cyber-thumb.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "New Lab for Cyber Security",
    price: "08/02/24",
    description: description,
    //rating: 4.1,
    isPopular: true,
  ),
  Update(
    id: 6,
    images: [
      "assets/images/pathpilot logo.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "New Feature in pathpilot",
    price: "05/02/24",
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "pathpilot Gives You Access to Whole Building & Help you around the Campus";
