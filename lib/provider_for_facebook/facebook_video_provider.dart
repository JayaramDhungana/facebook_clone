import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FacebookVideoProvider extends ChangeNotifier {
  int selectedIndex = 1;

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

final facebookVideoProvider = ChangeNotifierProvider((ref) {
  return FacebookVideoProvider();
});
