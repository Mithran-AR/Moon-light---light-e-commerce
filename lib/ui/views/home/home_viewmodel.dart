import 'package:flutter/material.dart';
import 'package:moonlight/ui/views/home/home_view.dart';
import 'package:moonlight/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../card/home/lightcategory.dart';
import '../cart/cart_view.dart';
import '../category/category_view.dart';

class HomeViewModel extends BaseViewModel {
  int _selectedIndex = 0; // Default index

  int get selectedIndex => _selectedIndex;
  final List<Widget> _pages = [
    HomeView(), // HomePage
    Category(), // CategoryPage
    CartView(), // CartPage
    ProfileView(), // ProfilePage
  ];
  Widget get currentPage => _pages[_selectedIndex];

  valuseChange() {}
  final _navigationService = StackedLocator.instance<NavigationService>();

  final List<String> banners = [
    "assets/images/Property 1=Default.png",
    "assets/images/Property 1=Variant2.png",
    "assets/images/Property 1=Variant3.png"
  ];
  List<Widget> lightcards = [
    LightCategoryCard(
      imagePath: "assets/images/img.png",
      title: 'Fairy Lights',
    ),
    LightCategoryCard(
      imagePath: "assets/images/img_1.png",
      title: 'Chandeliers',
    ),
    LightCategoryCard(
      imagePath: "assets/images/img_2.png",
      title: 'Outdoor',
    ),
    LightCategoryCard(
      imagePath: "assets/images/img_1.png",
      title: 'Chandeliers',
    )
  ];
  final List<List<ShopByRoomItem>> ShopByRoomItems = [
    [
      ShopByRoomItem(
        imagepath: 'assets/images/img_4.png',
        title: 'Living Room',
      ),
      ShopByRoomItem(
          imagepath: "assets/images/img_5.png", title: 'Dining Room'),
    ],
    [
      ShopByRoomItem(imagepath: "assets/images/img_6.png", title: 'Bath Room'),
      ShopByRoomItem(imagepath: "assets/images/img_7.png", title: 'Kitchen'),
    ]
  ];
  int _curentindex = 0;
  int get currentIndex => _curentindex;
  final PageController Smoothcntrl = PageController();

  void updateIndex(int index) {
    _curentindex = index;
    notifyListeners();
  }

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  @override
  void dipose() {
    Smoothcntrl.dispose();
    super.dispose();
  }
}

class ShopByRoomItem {
  final String imagepath;
  final String title;
  ShopByRoomItem({required this.imagepath, required this.title});
}
