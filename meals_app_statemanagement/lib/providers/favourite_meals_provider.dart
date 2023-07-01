import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_tutorial/models/meal.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]);

  bool toggleMealFavouriteStatus(Meal meal) {
    bool isFavourite = state.contains(meal);

    if (isFavourite) {
      // state.removeWhere((element) => element.id == meal.id); // Wrong
      // a = [1,2,3]
      // a.add(5); xx
      // a = [1,2,3,5] // updated
      // a = [1,2,3,5] -- // change
      state = state.where((element) => element.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouriteMealsProvider =
    StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>(
  (ref) => FavouriteMealsNotifier(),
);
