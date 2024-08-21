import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Provider/recipes_provider.dart';
import 'package:recipe/Widgets/recipe_card.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final recipes = context.read<RecipeProvider>().recipes;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text(
            'Recipes'.toUpperCase(),
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return RecipeCard(recipe: recipes[index]);
            }));
  }
}
