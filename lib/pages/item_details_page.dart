import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:recipe_app/models/recipe_model.dart';

import 'package:recipe_app/utils/circular_percentage_indicator.dart';
import 'package:recipe_app/utils/my_clipper.dart';

import '../models/ingredients.dart';

class ItemDetailsPage extends StatefulWidget {
  final RecipeItems recipeItems;

  const ItemDetailsPage({super.key, required this.recipeItems});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.recipeItems.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.black38,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                              widget.recipeItems.owner,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.recipeItems.ownerName,
                                  maxLines: 1,
                                  style: TextStyle(
                                    height: 0,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "12 Recipes Shared",
                                  style: TextStyle(
                                    height: 0,
                                    fontSize: 12,
                                    color: Colors.black.withValues(alpha: 0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "${widget.recipeItems.rate}",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  RatingBar.builder(
                                    itemSize: 15,
                                    initialRating: widget.recipeItems.rate,
                                    unratedColor: Colors.grey.shade400,
                                    itemBuilder: (context, index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.amberAccent,
                                      );
                                    },
                                    onRatingUpdate: (value) {},
                                  ),

                                  SizedBox(width: 5),
                                ],
                              ),
                              Text(
                                "${widget.recipeItems.review} Reviews",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withValues(alpha: 0.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.recipeItems.name,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "1 Bowl (${widget.recipeItems.weight}g)",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "See Details",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyCircularPercentageIndicator(
                            name: widget.recipeItems.calorie['name'],
                            amount: widget.recipeItems.calorie['amount']
                                .toString(),
                            percentage:
                                widget.recipeItems.calorie['percentage'],
                            color: widget.recipeItems.calorie['color'],
                            data: widget.recipeItems.calorie['data'],
                          ),
                          MyCircularPercentageIndicator(
                            name: widget.recipeItems.carb['name'],
                            amount: widget.recipeItems.carb['amount']
                                .toString(),
                            percentage: widget.recipeItems.carb['percentage'],
                            color: widget.recipeItems.carb['color'],
                            data: widget.recipeItems.carb['data'],
                          ),
                          MyCircularPercentageIndicator(
                            name: widget.recipeItems.protein['name'],
                            amount: widget.recipeItems.protein['amount']
                                .toString(),
                            percentage:
                                widget.recipeItems.protein['percentage'],
                            color: widget.recipeItems.protein['color'],
                            data: widget.recipeItems.protein['data'],
                          ),
                          MyCircularPercentageIndicator(
                            name: widget.recipeItems.fat['name'],
                            amount: widget.recipeItems.fat['amount'].toString(),
                            percentage: widget.recipeItems.fat['percentage'],
                            color: widget.recipeItems.fat['color'],
                            data: widget.recipeItems.fat['data'],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          ingredients.length,
                          (index) => Column(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: ingredients[index].color,
                                child: Image.asset(
                                  ingredients[index].image,
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                ingredients[index].name,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * .5,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: size.height * .48,
              right: 30,
              child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, spreadRadius: 5),
                  ],
                  color: widget.recipeItems.fav ? Colors.red : Colors.black45,
                ),
                child: Icon(Iconsax.heart, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
