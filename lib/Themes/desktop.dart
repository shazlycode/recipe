import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Provider/recipes_provider.dart';
import 'package:recipe/Widgets/recipe_card.dart';
import 'package:recipe/main.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desktop"),
      ),
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.amberAccent,
            child: ListView(
              children: [
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
                ListTile(
                  title: Text("Recepies Type"),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 3 / 6,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                ),
                itemCount: context.read<RecipeProvider>().recipes.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: RecipeCard(
                        recipe: context.read<RecipeProvider>().recipes[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
