import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Provider/recipes_provider.dart';

// ignore: must_be_immutable
class RecipeCard extends StatefulWidget {
  RecipeCard({
    super.key,
    required this.recipe,
  });

  Recipe recipe;

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    // final recipeProvider = context.read<RecipeProvider>();
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/recipeDetails',
            arguments: widget.recipe);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.recipe.name!),
            Image.network(widget.recipe.image!),
            Text("${widget.recipe.price} \$"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      context
                          .read<RecipeProvider>()
                          .toggleFavorite(widget.recipe);
                    });
                  },
                  icon: Icon(context
                          .read<RecipeProvider>()
                          .recipes
                          .firstWhere((e) => e.id == widget.recipe.id)
                          .isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
