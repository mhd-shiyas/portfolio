import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider with ChangeNotifier {
  final ItemScrollController itemScrollController = ItemScrollController();
  final scrollDuration = const Duration(seconds: 1);
  int currentPage = 0;

 void setCurrentPage(int page) => itemScrollController.scrollTo(
      index: page,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: 0);

  // currentPage = page;
  // notifyListeners();
}
