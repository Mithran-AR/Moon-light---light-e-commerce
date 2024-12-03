import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bottom_viewmodel.dart';

class BottomView extends StackedView<BottomViewModel> {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Color(0xffD5E1DD),
        selectedItemColor: Color(0xff183D3D),
        unselectedItemColor: Color(0xff183D3D),
        type: BottomNavigationBarType.fixed,

        currentIndex:
        viewModel.selectedIndex, // Bind selected index to the ViewModel
        onTap: (int index) {
          viewModel.updateSelectedIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
        ],
      ),
      body: viewModel.currentPage,
    );
  }

  @override
  BottomViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomViewModel();
}
