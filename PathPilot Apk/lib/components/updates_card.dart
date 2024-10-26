import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/update.dart';

class UpdatesCard extends StatelessWidget {
  const UpdatesCard({
    super.key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.update,
    required this.onPress,
  });

  final double width, aspectRetio;
  final Update update;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(update.images[0]),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              update.title,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  update.price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                // InkWell(
                //   borderRadius: BorderRadius.circular(50),
                //   onTap: () {},
                //   child: Container(
                //     padding: const EdgeInsets.all(6),
                //     height: 24,
                //     width: 24,
                //     decoration: BoxDecoration(
                //       color: update.isFavourite
                //           ? kPrimaryColor.withOpacity(0.15)
                //           : kSecondaryColor.withOpacity(0.1),
                //       shape: BoxShape.circle,
                //     ),
                //     // child: SvgPicture.asset(
                //     //   "assets/icons/Heart Icon_2.svg",
                //     //   colorFilter: ColorFilter.mode(
                //     //       update.isFavourite
                //     //           ? const Color(0xFFFF4848)
                //     //           : const Color(0xFFDBDEE4),
                //     //       BlendMode.srcIn),
                //     // ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
