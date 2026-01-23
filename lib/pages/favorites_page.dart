import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe_model.dart';
import 'package:recipe_app/utils/widgets/text_widgets.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: ListView.builder(
        itemCount: recipeItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(12),
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.greenAccent,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Image container
                Container(
                  height: 110,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(recipeItems[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(width: 20),
                //Text container
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      textBold(recipeItems[index].name, 16, Colors.grey[300]),
                      SizedBox(height: 3),

                      //Description
                      textNormal(
                        recipeItems[index].description,
                        12,
                        Colors.white,
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          textNormal(
                            "Duration: ${recipeItems[index].duration}",
                            16,
                            Colors.white,
                          ),

                          textNormal(
                            "Price: \$${recipeItems[index].price.toString()}",
                            16,
                            Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
