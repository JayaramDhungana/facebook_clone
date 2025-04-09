import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtomNavigationBarProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

final buttomNavigationBarProvider = ChangeNotifierProvider((ref) {
  return ButtomNavigationBarProvider();
});
