import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 175,
        width: 175,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/no_user.jpg"),
            ),
            // Positioned(
            //   right: 25,
            //   bottom: 25,
            //   child: SizedBox(
            //     height: 46,
            //     width: 46,
            //     child: TextButton(
            //       style: TextButton.styleFrom(
            //         foregroundColor: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50),
            //           side: const BorderSide(color: Colors.white),
            //         ),
            //         backgroundColor: const Color(0xFFF5F6F9),
            //       ),
            //       onPressed: () {},
            //       child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
