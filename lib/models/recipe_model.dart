import 'package:flutter/material.dart';

List<String> menuItems = [
  'Breakfast',
  'Lunch',
  'Dinner',
  'Snack',
  'Cheat Menu',
];

class RecipeItems {
  final String image, name, owner, ownerName, review, description;
  final int weight, price;
  final double rate, duration;
  final Map<String, dynamic> calorie, fat, protein, carb;

  final bool fav;

  RecipeItems({
    required this.image,
    required this.name,
    required this.owner,
    required this.ownerName,
    required this.review,
    required this.carb,
    required this.rate,
    required this.calorie,
    required this.fat,
    required this.protein,
    required this.weight,
    required this.fav,
    required this.price,
    required this.duration,
    required this.description,
  });
}

List<RecipeItems> recipeItems = [
  RecipeItems(
    owner:
        "https://img.freepik.com/free-photo/portrait-man-laughing_23-2148859448.jpg?size=338&ext=jpg&ga=GA1.1.1819120589.1728086400&semt=ais_hybrid",
    ownerName: "Mr/Ms Mushroom",
    image: 'assets/chicken-salad.jpg',
    name: 'Chicken Salad',
    rate: 4.3,
    weight: 250,
    calorie: {
      'name': "Calorie",
      'amount': 240,
      'percentage': "48%",
      'color': Colors.red,
      'data': 0.48,
    },
    review: "100",
    fav: false,
    carb: {
      'name': "Carb",
      'amount': 30,
      'percentage': "12%",
      'color': Colors.red,
      'data': 0.12,
    },
    protein: {
      'name': "Protein",
      'amount': 15,
      'percentage': "30%",
      'color': Colors.red,
      'data': 0.3,
    },
    fat: {
      'name': "Fat",
      'amount': 15,
      'percentage': "25%",
      'color': Colors.red,
      'data': 0.25,
    },
    price: 15,
    duration: 1.5,
    description:
        'Logoi psum is the ultimate Figma plugin for adding free, high-quality placeholder logos to your designs with just one click.',
  ),
  RecipeItems(
    image: 'assets/mushroom salad.png',
    name: 'Mushroom salad',
    rate: 5.0,
    ownerName: "Prakash Subedi",
    owner:
        "https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg",
    fav: true,
    weight: 200,
    calorie: {
      'name': "Calorie",
      'amount': 320,
      'percentage': "64%",
      'color': Colors.red,
      'data': 0.64,
    },
    review: "50",
    fat: {
      'name': "Fat",
      'amount': 30,
      'percentage': "50%",
      'color': Colors.red,
      'data': 0.5,
    },
    protein: {
      'name': "Protein",
      'amount': 15,
      'percentage': "30%",
      'color': Colors.red,
      'data': 0.3,
    },
    carb: {
      'name': "Carb",
      'amount': 15,
      'percentage': "10%",
      'color': Colors.red,
      'data': 0.1,
    },
    price: 20,
    duration: 2.0,
    description:
        'Logoipsum is the ultimate Figma plugin for adding free, high-quality placeholder logos to your designs with just one click',
  ),
  RecipeItems(
    image: 'assets/grilled-chicken-salad.jpg',
    name: 'Grilled Chicken Salad',
    rate: 4.5,
    fav: true,
    owner:
        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg",
    weight: 400,
    calorie: {
      'name': "Calorie",
      'amount': 420,
      'percentage': "84%",
      'color': Colors.red,
      'data': 0.84,
    },
    ownerName: "Ramesh Shahi",
    review: "50",
    fat: {
      'name': "Fat",
      'amount': 5,
      'percentage': "8%",
      'color': Colors.red,
      'data': 0.08,
    },
    protein: {
      'name': "Protein",
      'amount': 30,
      'percentage': "60%",
      'color': Colors.red,
      'data': 0.6,
    },
    carb: {
      'name': "Carb",
      'amount': 15,
      'percentage': "10%",
      'color': Colors.red,
      'data': 0.1,
    },
    price: 22,
    duration: .5,
    description:
        'Logoipsum is the ultimate Figma plugin for adding free, high-quality placeholder logos to your designs with just one click.',
  ),
  RecipeItems(
    image: 'assets/thai salad.png',
    name: 'Thai Salad',
    rate: 4.9,
    fav: false,
    review: '52',
    ownerName: "Hari Prasad",
    weight: 200,
    description:
        'Logoipsum is the ultimate Figma plugin for adding free, high-quality placeholder logos to your designs with just one click.',
    calorie: {
      'name': "Calorie",
      'amount': 120,
      'percentage': "24%",
      'color': Colors.red,
      'data': 0.24,
    },
    owner:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJaoIeJQU_V9rL_ZII61whWyqSFbmMgTgwQ&s",
    fat: {
      'name': "Fat",
      'amount': 50,
      'percentage': "83%",
      'color': Colors.red,
      'data': 0.83,
    },
    protein: {
      'name': "Protein",
      'amount': 16,
      'percentage': "32%",
      'color': Colors.red,
      'data': 0.32,
    },
    carb: {
      'name': "Carb",
      'amount': 30,
      'percentage': "20%",
      'color': Colors.red,
      'data': 0.2,
    },
    price: 15,
    duration: 4,
  ),
];
