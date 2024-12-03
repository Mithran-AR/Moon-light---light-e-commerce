import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import '../cart/cart_view.dart';
import '../category/category_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';

class BottomViewModel extends BaseViewModel {
  int _selectedIndex = 0; // Default index

  int get selectedIndex => _selectedIndex;
  final List<Widget> _pages = [
    HomeView(), // HomePage
    Category(), // CategoryPage
    CartView(), // CartPage
    ProfileView(), // ProfilePage
  ];
  Widget get currentPage => _pages[_selectedIndex];
  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
