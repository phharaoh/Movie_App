import 'package:flutter/material.dart';
import 'package:movie_app/models/watch_list_model.dart';

class WatchListController extends ChangeNotifier {
  final List<WatchListModel> watchList = [];

  void addToWatchList(WatchListModel movie) {
    watchList.add(movie);
    notifyListeners();
  }

  void removeFromWatchList(WatchListModel movie) {
    watchList.removeWhere((e) => e.title == movie.title);
    notifyListeners();
  }
}
