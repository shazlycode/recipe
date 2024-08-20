import 'package:flutter/foundation.dart';

class Recipe {
  final String? id;
  final String? name;
  final String? description;
  final double? price;
  final String? image;
  bool isFavorite;

  Recipe(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.image,
      this.isFavorite = false});
}

class RecipeProvider with ChangeNotifier {
  List<Recipe> _recipes = [
    Recipe(
        id: "1",
        name: "Recipe 1",
        description: "Recipe 1 description",
        price: 23.5,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXy4eASiSlUb2zrBqgROrDwBMRWWPDWbUJA&s",
        isFavorite: true),
    Recipe(
        id: "2",
        name: "Recipe 2",
        description: "Recipe 2 description",
        price: 102.5,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXy4eASiSlUb2zrBqgROrDwBMRWWPDWbUJA&s",
        isFavorite: true),
    Recipe(
        id: "3",
        name: "Recipe 3",
        description: "Recipe 3 description",
        price: 223.5,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXy4eASiSlUb2zrBqgROrDwBMRWWPDWbUJA&s",
        isFavorite: true),
    Recipe(
        id: "4",
        name: "Recipe 4",
        description: "Recipe 4 description",
        price: 214.5,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXy4eASiSlUb2zrBqgROrDwBMRWWPDWbUJA&s",
        isFavorite: true),
  ];
  List<Recipe> get recipes => _recipes;
}
