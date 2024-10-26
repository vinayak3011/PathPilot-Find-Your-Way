import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  final IconData icon;
  final double? size; // Make size nullable
  final Color? color; // Make color nullable

  const IconBadge({super.key, required this.icon, this.size, this.color});

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          widget.icon,
          size: widget.size,
          color: widget.color, // Remove the null check here
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 12.0,
            width: 12.0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.circular(6),
              ),
              height: 7.0,
              width: 7.0,
            ),
          ),
        ),
      ],
    );
  }
}
