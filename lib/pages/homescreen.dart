import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:recipe_app/pages/item_details_page.dart';
import 'package:recipe_app/utils/common/my_searchbar.dart';
import 'package:recipe_app/utils/common/page_header.dart';
import 'package:recipe_app/utils/common/text_app_bar.dart';

import '../models/categories_recipe.dart';
import '../models/recipe_model.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

int selectedIndex = 0;
int selectedPage = 0;

List<IconData> icons = [
  Iconsax.home,
  Icons.bar_chart_rounded,
  Iconsax.heart,
  Icons.person_outline_rounded,
];

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header Part
            appHeader(
              name: "Gynak",
              avatarImage: 'assets/user.png',
              context: context,
            ),

            // SearchField
            mySearchBar(),
            SizedBox(height: 20),

            //

            // Popular Menu and See all
            textAppBar(),
            SizedBox(height: 20),

            // Popular Menu Items
            popularMenuItems(),
            SizedBox(height: 20),
            menuItemView(context),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            categoryItems(),
            Padding(
              padding: EdgeInsetsGeometry.all(40),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://media.istockphoto.com/id/1213660289/photo/young-beautiful-chinese-chef-woman-wearing-cooker-uniform-and-hat-holding-tray-with-dome-with.jpg?s=612x612&w=0&k=20&c=Acr3SpWXvGhElDWXTo2Z7hfc7jpUQrXJuOs9SzuZEHA=",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hona Ci Minh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Expert Chef",
                        style: TextStyle(
                          color: Colors.black.withValues(alpha: .5),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView categoryItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        children: List.generate(recipeCategories.length, (index) {
          return Padding(
            padding: index == 0
                ? EdgeInsets.only(left: 20, right: 20)
                : EdgeInsets.only(right: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: recipeCategories[index].color,
                  child: Image.asset(
                    recipeCategories[index].image,
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  recipeCategories[index].name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  SingleChildScrollView menuItemView(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(recipeItems.length, (index) {
          return Padding(
            padding: index == 0
                ? EdgeInsets.only(left: 20, right: 10)
                : EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ItemDetailsPage(recipeItems: recipeItems[index]),
                  ),
                );

                // Navigator.push()
              },
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width / 2.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(recipeItems[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: recipeItems[index].fav
                            ? Colors.red
                            : Colors.black45,
                      ),
                      child: Icon(Iconsax.heart, color: Colors.white, size: 18),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black45,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  recipeItems[index].name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amberAccent,
                                    size: 18,
                                  ),
                                  Text(
                                    "${recipeItems[index].rate}",
                                    style: TextStyle(
                                      height: 0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "1 Bowl ${recipeItems[index].weight}g",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              height: 0,
                            ),
                          ),
                          Text(
                            "${recipeItems[index].calorie["amount"]} Kkal | 25% AKL",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  SingleChildScrollView popularMenuItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          menuItems.length,
          (index) => Padding(
            padding: EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {});
                selectedIndex = index;
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      selectedIndex == index ? Colors.teal : Colors.white,
                      selectedIndex == index
                          ? Colors.teal.shade200
                          : Colors.white,
                    ],
                  ),
                ),
                child: Text(
                  menuItems[index],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.w500,
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
