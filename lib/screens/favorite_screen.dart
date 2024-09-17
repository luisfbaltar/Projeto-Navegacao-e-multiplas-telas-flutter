import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Container(
        color: const Color.fromARGB(255, 231, 235, 231),
        child: const Center(
          child: Text('Você ainda não marcou nenhuma refeição como favorita'),
        ),
      );
    } else {
      return Container(
          color: const Color.fromARGB(255, 231, 235, 231),
          child: ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(favoriteMeals[index]);
            },
          ));
    }
  }
}
