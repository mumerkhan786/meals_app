import 'package:flutter/material.dart';
import 'package:meals/widgets/filter_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FilterItem(
            value: activeFilters[Filters.glutenFree]!,
            mainTitle: 'Gluten-Free',
            subTitle: 'Only include gluten-free meals.',
            onChanged: (isChecked) {
              ref
                  .watch(filtersProvider.notifier)
                  .setFilter(Filters.glutenFree, isChecked);
            },
          ),
          FilterItem(
            value: activeFilters[Filters.lactoseFree]!,
            mainTitle: 'Lactose-Free',
            subTitle: 'Only include lactose-free meals.',
            onChanged: (isChecked) {
              ref
                  .watch(filtersProvider.notifier)
                  .setFilter(Filters.lactoseFree, isChecked);
            },
          ),
          FilterItem(
            value: activeFilters[Filters.vegetarian]!,
            mainTitle: 'Vegetarian',
            subTitle: 'Only include vegetarian meals.',
            onChanged: (isChecked) {
              ref
                  .watch(filtersProvider.notifier)
                  .setFilter(Filters.vegetarian, isChecked);
            },
          ),
          FilterItem(
            value: activeFilters[Filters.vegan]!,
            mainTitle: 'Vegan',
            subTitle: 'Only include vegan meals.',
            onChanged: (isChecked) {
              ref
                  .watch(filtersProvider.notifier)
                  .setFilter(Filters.vegan, isChecked);
            },
          ),
        ],
      ),
    );
  }
}
