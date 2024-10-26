import 'package:flutter/material.dart';
import 'package:pathpilot/screens/home/components/notification_screen.dart';

//import '../../cart/cart_screen.dart';
import 'icon_btn_with_counter.dart';
// import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
              child: Text('Hii\nVinayak',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          //const Expanded(child: SearchField()),
          // const SizedBox(width: 16),
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Cart Icon.svg",
          //   press: () => Navigator.pushNamed(context, CartScreen.routeName),
          // ),
          const SizedBox(width: 9),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {
              //Navigator.pushNamed(context, NotificationScreen.routeName);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
