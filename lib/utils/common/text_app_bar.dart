import 'package:flutter/material.dart';
import 'package:recipe_app/utils/widgets/text_widgets.dart';

Widget textAppBar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textVaryingWeight("Popular Menus", 20, FontWeight.w600),
        textVaryingWeight("See all", 16, FontWeight.w600, Colors.green),
      ],
    ),
  );
}
