import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({super.key});

  @override
  ConsumerState<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    final activeFilters = ref.read(filtersProvider);
    _glutenFreeFilterSet = activeFilters[Filters.glutenFree]!;
    _lactoseFreeFilterSet = activeFilters[Filters.lactoseFree]!;
    _vegetarianFilterSet = activeFilters[Filters.vegetarian]!;
    _veganFilterSet = activeFilters[Filters.vegan]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {
          ref.read(filtersProvider.notifier).setFilters({
            Filters.glutenFree: _glutenFreeFilterSet,
            Filters.lactoseFree: _lactoseFreeFilterSet,
            Filters.vegetarian: _vegetarianFilterSet,
            Filters.vegan: _veganFilterSet,
          });
        },
        child: Column(
          children: [
            FilterItem(
              value: _glutenFreeFilterSet,
              mainTitle: 'Gluten-Free',
              subTitle: 'Only include gluten-free meals.',
              onChanged: (isChecked) {
                setState(
                  () {
                    _glutenFreeFilterSet = isChecked;
                  },
                );
              },
            ),
            FilterItem(
              value: _lactoseFreeFilterSet,
              mainTitle: 'Lactose-Free',
              subTitle: 'Only include lactose-free meals.',
              onChanged: (isChecked) {
                setState(
                  () {
                    _lactoseFreeFilterSet = isChecked;
                  },
                );
              },
            ),
            FilterItem(
              value: _vegetarianFilterSet,
              mainTitle: 'Vegetarian',
              subTitle: 'Only include vegetarian meals.',
              onChanged: (isChecked) {
                setState(
                  () {
                    _vegetarianFilterSet = isChecked;
                  },
                );
              },
            ),
            FilterItem(
              value: _veganFilterSet,
              mainTitle: 'Vegan',
              subTitle: 'Only include vegan meals.',
              onChanged: (isChecked) {
                setState(
                  () {
                    _veganFilterSet = isChecked;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
