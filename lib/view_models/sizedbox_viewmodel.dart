import 'package:flutter/material.dart';

class SizedBoxViewModel extends ChangeNotifier {
  double width = 100.0;
  double height = 100.0;

  // Method to update width and height
  void updateDimensions(double newWidth, double newHeight) {
    width = newWidth;
    height = newHeight;
    notifyListeners();
  }
}
