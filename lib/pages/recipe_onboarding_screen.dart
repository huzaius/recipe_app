import 'package:flutter/material.dart';
import 'package:recipe_app/pages/bottomnav_screen.dart';

import '../utils/utils.dart';

class RecipeOnBoardingScreen extends StatefulWidget {
  const RecipeOnBoardingScreen({super.key});

  @override
  State<RecipeOnBoardingScreen> createState() => _RecipeOnBoardingScreenState();
}

class _RecipeOnBoardingScreenState extends State<RecipeOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: size.height * 0.625,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade400,
                  Colors.grey.shade200,
                  Colors.white,
                ],
              ),
              image: DecorationImage(
                image: AssetImage('assets/background 1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: size.height * 0.325,
            width: size.width,
            color: Colors.white,

            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Lets's cook your own food and adjust your diet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      height: 1.3,
                    ),
                  ),
                  Text(
                    "Dont be confused, Complete your nutritional need by choosing food here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.8,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomnavScreen(),
                        ),
                      );
                    },

                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        gradient: gradientColor,
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
