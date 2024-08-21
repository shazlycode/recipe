import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Layout/layout.dart';
import 'package:recipe/Provider/recipes_provider.dart';
import 'package:recipe/Themes/Mobile/recipe_details.dart';
import 'package:recipe/Themes/desktop.dart';
import 'package:recipe/Themes/Mobile/mobile.dart';
import 'package:recipe/Themes/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RecipeProvider(),
        )
      ],
      child: MaterialApp(
        home: const Layout(
          desktopLayout: Desktop(),
          mobileLayout: Mobile(),
          tabLayout: Tablet(),
        ),
        routes: {
          "/recipeDetails": (_) => const RecipeDetails(),
        },
      ),
    );
  }
}
