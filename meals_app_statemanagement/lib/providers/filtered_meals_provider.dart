import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_tutorial/data/dummy_data.dart';
import 'package:meals_app_tutorial/enums%20and%20extensions/all.dart';
import 'package:meals_app_tutorial/providers/filters_provider.dart';

final filteredMealsProvider = Provider((ref) {
  final filters = ref.watch(filtersProvider);
  return dummyMeals.where(
    (element) {
      if (filters[Filter.glutenFree]! && !element.isGlutenFree) return false;
      if (filters[Filter.lactoseFree]! && !element.isLactoseFree) return false;
      if (filters[Filter.vegetarian]! && !element.isVegetarian) return false;
      if (filters[Filter.vegan]! && !element.isVegan) return false;
      return true;
    },
  ).toList();
});
