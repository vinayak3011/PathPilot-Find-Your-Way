import 'package:flutter/material.dart';
//import 'package:shop_app/components/update_card.dart';
//import 'package:shop_app/models/update.dart';
//import 'package:shop_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:pathpilot/screens/home/components/search_field.dart';

//import '../details/details_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 100, right: 30, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SearchField()),
              SizedBox(width: 9),
            ],
          ),
        ),
    );
  }
}
