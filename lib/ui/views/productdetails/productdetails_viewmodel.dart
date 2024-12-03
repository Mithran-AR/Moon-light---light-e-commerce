import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductdetailViewModel extends BaseViewModel {
  final List<String> product = [
    'assets/images/img_18.png',
    'assets/images/img_19.png',
    'assets/images/img_20.png',
  ];


  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final PageController pageController = PageController();

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void onPageChanged(int index) {
    updateIndex(index);
  }

  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    notifyListeners(); // Notify the view to rebuild when the state changes
  }

  Widget buildProductDetail(String detail) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Text(
        '• $detail',
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget buildProductDetails(String detail) {
    return Padding(
      padding: EdgeInsets.only(left: 18),
      child: Text(
        ' $detail',
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  final _navigationService = StackedLocator.instance<NavigationService>();

  void navigateToDetails() {
    _navigationService.navigateTo('/adress-view');
  }
  gotoadress(){
    _navigationService.navigateTo('/address-view');
  }

  void navigateToback() {
    _navigationService.navigateTo('/productdetail-view');
  }
}
