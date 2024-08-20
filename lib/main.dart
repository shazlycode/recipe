import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/Provider/recipes_provider.dart';
import 'package:recipe/main_screen.dart';

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
        home: MainScreen(),
      ),
    );
  }
}
