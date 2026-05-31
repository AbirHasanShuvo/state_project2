import 'package:state_series/state_notifier_provider/model/item.dart';

class FavouriteStates {
  final List<Item> allitems;
  final List<Item> filteredItems;
  final String search;

  FavouriteStates({
    required this.allitems,
    required this.filteredItems,
    required this.search,
  });

  FavouriteStates copyWith({
    List<Item>? allitems,
    List<Item>? filteredItems,
    final String? search,
  }) {
    return FavouriteStates(
      allitems: allitems ?? this.allitems,
      filteredItems: filteredItems ?? this.filteredItems,
      search: search ?? this.search,
    );
  }
}
