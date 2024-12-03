import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight/ui/views/productdetails/productdetails_viewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import '../../card/productdetails/quantitybutton.dart';

import '../../common/app_colors.dart';

class ProductdetailsView extends StatefulWidget {
  const ProductdetailsView({Key? key}) : super(key: key);

  @override
  _ProductdetailViewState createState() => _ProductdetailViewState();
}

class _ProductdetailViewState extends State<ProductdetailsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductdetailViewModel>.reactive(
      viewModelBuilder: () => ProductdetailViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff183D3D),
              size: 20.sp, // Responsive icon size
            ),
            actions: [
              InkWell(
                child: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff183D3D),
                  size: 25.sp, // Responsive icon size
                ),
                onTap: () {
                  viewModel.navigateToback();
                },
              ),
              SizedBox(width: 15.w), // Responsive spacing
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 250.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: viewModel.pageController,
                            itemCount: viewModel.product.length,
                            onPageChanged: viewModel.onPageChanged,
                            itemBuilder: (context, index) {
                              return Image.asset(
                                viewModel.product[index],
                                fit: BoxFit.fill,
                                width: double.infinity,
                              );
                            },
                          ),
                          if (viewModel.currentIndex ==
                              1) // Only show text on index 1
                            Positioned(
                              bottom: 10.h,
                              left: 10.w,
                              child: Container(
                                //color: Colors.black.withOpacity(0.5),
                                padding: EdgeInsets.all(
                                    8.0.w), // ScreenUtil applied here
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Material: Metal",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize:
                                            13.sp, // ScreenUtil applied here
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "Dimension: 16 Inch (400 mm)",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize:
                                            13.sp, // ScreenUtil applied here
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                    child: Center(
                      child: AnimatedSmoothIndicator(
                        count: viewModel.product.length,
                        axisDirection: Axis.horizontal,
                        effect: WormEffect(
                          radius: 6.r,
                          dotWidth: 6.5.w,
                          dotHeight: 6.5.h,
                          spacing: 8.w,
                          activeDotColor: Colors.grey,
                        ),
                        activeIndex: viewModel.currentIndex,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "JS CHANDELIER (IND)",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 14.sp, // Use ScreenUtil for font size

                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 70.w,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              color: Color(0xff183D3D),
                              size: 28.sp,
                            )),
                        IconButton(
                          icon: Icon(
                            viewModel.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: viewModel.isFavorite
                                ? Colors.red
                                : Colors.black,
                            size: 28.sp,
                          ),
                          onPressed: viewModel.toggleFavorite,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320.w,
                    height: 140.h,
                    //color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Black Mamba Round Chandelier",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 17.5.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            Text(
                              'Colour: ',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Chip(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w,
                                  vertical: 1.5.h), // Adjusted padding
                              visualDensity: VisualDensity
                                  .compact, // Compact visual density
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 4.w),
                              backgroundColor: Color(0xffD5E1DD),
                              label: Text(
                                'Black',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Text('Rs. 26,000/-',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffD5E1DD),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            )),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            Container(
                              width: 110.w,
                              height: 20.h,
                              color: Color(0xffD5E1DD),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff183D3D),
                                    size: 16.sp,
                                  ),
                                  Icon(Icons.star,
                                      color: Color(0xff183D3D), size: 16.sp),
                                  Icon(Icons.star,
                                      color: Color(0xff183D3D), size: 16.sp),
                                  Icon(Icons.star_half,
                                      color: Color(0xff183D3D), size: 16.sp),
                                  Icon(Icons.star_border,
                                      color: Color(0xff183D3D), size: 16.sp),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Text('24 review',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w300,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Select Quantity:",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Quantitybutton()
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 358.w,
                    height: 250.h,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 0.5.w, color: Color(0xff183D3D))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Best Offers",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Divider(),
                          Text(
                            "Get 50% off on your first purchase",
                            style: GoogleFonts.montserrat(
                              color: Color(0xff183D3D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Use code:  ",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 15.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 30.h,
                                color: Colors.black,
                                child: Center(
                                  child: Text("TY10MHG",
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Text(
                            "No Cost EMI Up to 6 Months",
                            style: GoogleFonts.montserrat(
                              color: Color(0xff183D3D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Avail No Cost EMI on Zest Money and Axio",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 330.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xffD5E1DD),
                      border: Border.all(width: 0.w),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "You can cancel your order before shipped, and a full refund will be initiated.",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 18.sp,
                        weight: 500,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '.  In stock. Ships in 2 to 3 days',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.local_shipping,
                          color: Colors.black, size: 18.sp),
                      SizedBox(width: 8.w),
                      Text(
                        '.  Estimated delivery: February 14 - February 18',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.local_offer, color: Colors.black, size: 18.sp),
                      SizedBox(width: 8.w),
                      Text(
                        '.  Free shipping for orders over Rs. 5000',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.sync, color: Colors.black, size: 18.sp),
                      SizedBox(width: 8.w),
                      Text(
                        '. FINAL SALE; not eligible for return',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: 330.w,
                    height: 540.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5.w),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Details",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          viewModel.buildProductDetail(
                              'Black Mamba Round Chandelier'),
                          viewModel.buildProductDetail(
                              'Premium MS Metal and PVD Finish: '),
                          viewModel.buildProductDetails(
                              'Precisely crafted with premium MS metal for durability. PVD finish adds sophistication, corrosion resistance, and long-lasting elegance'),
                          viewModel.buildProductDetail(
                              'Best-Selling Choice for Dining Areas:'),
                          viewModel.buildProductDetails(
                              'The Black Mamba Round Chandelier has earned its reputation as a best-selling choice for living areas. Its combination of striking design, customizable features, premium materials, and high-quality crystals make it a sought-after lighting solution.'),
                          viewModel.buildProductDetail(
                              'Premium quality K9 crystal '),
                          viewModel.buildProductDetails(
                              'for easy maintenance and great ambiance'),
                          viewModel.buildProductDetail('Italian crystal'),
                          viewModel.buildProductDetails(
                              'on the outer circumference'),
                          viewModel.buildProductDetail('Easy Installation'),
                          viewModel.buildProductDetail(
                              'Perfect for living room, bedroom, hallway and more'),
                          viewModel.buildProductDetail('Warranty: 2 Years'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add to Cart functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD5E1DD), // Button color
                    padding: EdgeInsets.symmetric(
                      horizontal: 28.w,
                      vertical: 13.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(0.r), // Rounded corners
                    ),
                  ),
                  child: Text(
                    'ADD TO CART',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.gotoadress();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff183D3D), // Button color
                    padding: EdgeInsets.symmetric(
                      horizontal: 42.w,
                      vertical: 13.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(0.r), // Rounded corners
                    ),
                  ),
                  child: Text(
                    'BUY NOW',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
