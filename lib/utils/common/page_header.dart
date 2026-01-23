import 'package:flutter/material.dart';

Widget appHeader({
  final String name = "",
  final String? avatarImage,
  required BuildContext context,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "$name\n",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              TextSpan(
                text: "What do you want to eat today?\n",
                style: TextStyle(fontSize: 13, color: Colors.black45),
              ),
            ],
          ),
        ),
        Spacer(),
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                // TODO: need a provider for proper page change
                Navigator.pushNamed(context, "/profile_page");
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(avatarImage!),
              ),
            ),
            Positioned(
              right: -2,
              top: -2,
              child: GestureDetector(
                onTap: () {
                  // TODO: need a provider for proper page change
                  Navigator.pushNamed(context, "/favorites_page");
                },
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
