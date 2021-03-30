import 'package:flutter/material.dart';

class PortfolioProvider extends ChangeNotifier {
  int index = 0;
  set setIndex (value) {
    index = value;
    notifyListeners();
  }
}
