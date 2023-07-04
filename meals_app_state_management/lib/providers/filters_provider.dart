import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_tutorial/enums%20and%20extensions/all.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier() : super(kInitialFilters);

  void setFilter(Filter filter, bool val) {
    state = {
      ...state,
      filter: val,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);
