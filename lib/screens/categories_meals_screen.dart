import 'package:flutter/material.dart';
import '../models/category.dart';

import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(category.title),
        ),
        body: Container(
          color: const Color.fromARGB(255, 231, 235, 231),
          child: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeals[index]);
            },
          ),
        ));
  }
}
