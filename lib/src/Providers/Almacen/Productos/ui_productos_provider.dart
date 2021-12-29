import 'package:flutter/material.dart';

class ProductoProvier with ChangeNotifier {
  int _currentPage = 1;
  set currentPage(int value) {
    if (_currentPage >= 1) {
      _currentPage = value;
      notifyListeners();
    }
  }

  int get currentPage => _currentPage;
}
