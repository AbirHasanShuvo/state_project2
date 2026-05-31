import 'package:flutter_riverpod/legacy.dart';
import 'package:state_series/state_notifier_provider/model/item.dart';
import 'package:state_series/state_notifier_provider/provider/favourite_states.dart';

final favouriteProvider =
    StateNotifierProvider<FavouriteNotifier, FavouriteStates>((ref) {
      return FavouriteNotifier();
    });

class FavouriteNotifier extends StateNotifier<FavouriteStates> {
  FavouriteNotifier()
    : super(FavouriteStates(allitems: [], filteredItems: [], search: ''));

  void addItem() {
    List<Item> items = [
      Item(name: "Macbook", id: 1, favourite: true),
      Item(name: "iPhone 16 pro", id: 2, favourite: true),
      Item(name: 'Books', id: 3, favourite: false),
      Item(name: 'Bike', id: 4, favourite: true),
      Item(name: "Mouse", id: 5, favourite: true),
    ];

    state = state.copyWith(allitems: items, filteredItems: items, search: '');
  }
}
