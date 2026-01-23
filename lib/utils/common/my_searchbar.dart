import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

Widget mySearchBar({
  final IconData icon = Iconsax.search_normal,
  final String hintText = "Search Food",
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.grey.shade200,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(icon, color: Colors.black45),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black26),
          contentPadding: EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    ),
  );
}
