import 'package:flutter/material.dart';
import 'package:recipe_app/pages/bottomnav_screen.dart';
import 'package:recipe_app/pages/cart_page.dart';
import 'package:recipe_app/pages/favorites_page.dart';
import 'package:recipe_app/pages/homescreen.dart';
import 'package:recipe_app/pages/profile_page.dart';
import 'package:recipe_app/pages/recipe_onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //TODO: Picture in assets for darkmode
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      home: RecipeOnBoardingScreen(),
      initialRoute: "/bottomnav_screeen",
      routes: {
        "/bottomnav_screeen": (context) => BottomnavScreen(),
        "/recipe_onboarding_screen": (context) => RecipeOnBoardingScreen(),
        "/favorites_page": (context) => FavoritesPage(),
        "/cart_page": (context) => CartPage(),
        "/profile_page": (context) => ProfilePage(),
        // "/item_details_page": (context) => ItemDetailsPage(recipeItems: null,),
        "/homescreen": (context) => MyHomeScreen(),
      },
    );
  }
}
