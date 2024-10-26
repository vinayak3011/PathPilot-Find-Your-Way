import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/update.dart';

class updateImages extends StatefulWidget {
  const updateImages({
    super.key,
    required this.update,
  });

  final Update update;

  @override
  _updateImagesState createState() => _updateImagesState();
}

class _updateImagesState extends State<updateImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.update.images[selectedImage]),
          ),
        ),
        // SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.update.images.length,
              (index) => SmallUpdateImage(
                isSelected: index == selectedImage,
                press: () {
                  setState(() {
                    selectedImage = index;
                  });
                },
                image: widget.update.images[index],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SmallUpdateImage extends StatefulWidget {
  const SmallUpdateImage(
      {super.key,
      required this.isSelected,
      required this.press,
      required this.image});

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  State<SmallUpdateImage> createState() => _SmallUpdateImageState();
}

class _SmallUpdateImageState extends State<SmallUpdateImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(widget.isSelected ? 1 : 0)),
        ),
        child: Image.asset(widget.image),
      ),
    );
  }
}
