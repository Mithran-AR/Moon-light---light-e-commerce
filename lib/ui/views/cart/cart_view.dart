import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight/ui/card/cart/Cartitem.dart';
import 'package:stacked/stacked.dart';

import '../../card/cart/PriceDetails.dart';
import 'cart_viewmodel.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CartViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "CART",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                InkWell(
                  onTap: viewModel.goto,
                  child: CartItem(
                    imageUrl: 'assets/images/img_14.png',
                    title: 'Black Mamba Round Chandelier',
                    size: '16 inch[400mm]',
                    price: 'Rs26,000/-',
                    bulb: 'With Bulb',
                  ),
                ),
                _buildDivider(),
                CartItem(
                    imageUrl: "assets/images/img_15.png",
                    title: "Outdoor Wall Light HL-301",
                    size: "14 Inch[355mm]",
                    price: "RS.3,300/-",
                    bulb: "With Bulb"),
                _buildDivider(),
                CartItem(
                    imageUrl: "assets/images/img_16.png",
                    title: "Lotus Emerald Chamdelier",
                    size: "24 Inch[610mm]",
                    price: "40,000/-",
                    bulb: "With Bulb"),
                _buildDivider(),
                PriceDetails()
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1.h,
      thickness: 1.h,
      color: Colors.grey,
    );
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
}
