import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Provider/recipes_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(recipes[index].name!),
                    Image.network(recipes[index].image!),
                    Text("${recipes[index].price} \$"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
