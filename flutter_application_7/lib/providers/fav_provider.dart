import 'package:flutter_application_7/models/item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class favnotifier extends StateNotifier<List<item>> {
  favnotifier() : super([]);
  bool togglmealfav(item item) {
    final isexist = state.contains(item);

    if (isexist) {
      state = state.where((e) => e.id != item.id).toList();
      return false;
    } else {
      state = [...state, item];

      return true;
    }
  }
}

class favnotifier2 extends StateNotifier<List<item2>> {
  favnotifier2() : super([]);
  bool togglmealfav(item2 item) {
    final isexist = state.contains(item);

    if (isexist) {
      state = state.where((e) => e.id != item.id).toList();
      return false;
    } else {
      state = [...state, item];

      return true;
    }
  }
}

final favprovider = StateNotifierProvider<favnotifier, List<item>>(
    (ref) => favnotifier());

final favmealprovider2 = StateNotifierProvider<favnotifier2, List<item2>>(
    (ref) => favnotifier2());