import 'package:flutter/material.dart';
import 'package:recipe/Provider/recipes_provider.dart';

enum LayoutType { desktop, tablet, mobile }

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({super.key});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)!.settings.arguments as Recipe;
    final width = MediaQuery.of(context).size.width;
    LayoutType layoutType = width > 480 && width < 768
        ? LayoutType.tablet
        : width >= 768
            ? LayoutType.desktop
            : LayoutType.mobile;

    return layoutType == LayoutType.mobile
        ? Scaffold(
            body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(recipe.image!),
                  centerTitle: true,
                  title: Text(recipe.name!),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                  Text(recipe.description!),
                ]),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(recipe.price.toString()),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                    Text(recipe.description!),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Text(recipe.price.toString()),
              ),
              SliverToBoxAdapter(
                child: Text(recipe.price.toString()),
              ),
              SliverToBoxAdapter(
                child: Text(recipe.price.toString()),
              ),
              SliverToBoxAdapter(
                child: Text(recipe.price.toString()),
              )
            ],
          ))
        : layoutType == LayoutType.tablet
            ? Scaffold(
                appBar: AppBar(
                  title: Text(recipe.name!),
                ),
              )
            : Scaffold(
                body: Center(
                  child: Text("Desktop"),
                ),
              );
  }
}
