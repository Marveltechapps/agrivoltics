//create a navigation provider with ChangeNotifier and route management
import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  String _currentRoute = '/';
  String get currentRoute => _currentRoute;

  void updateRoute(String newRoute) {
    if (_currentRoute != newRoute) {
      _currentRoute = newRoute;
      notifyListeners();
    }
  }
}