import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'CartActions.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String size;
  final String price;
  final String bulb;

  CartItem({
    required this.imageUrl,
    required this.title,
    required this.size,
    required this.price,
    required this.bulb,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 180.h,
        width: 370.w,
        // color: Colors.pink,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 110.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 110.h,
                  width: 185.w,
                  // color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.montserrat(
                          fontSize: 14.sp, // Responsive font size
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'Size: $size',
                        style: GoogleFonts.montserrat(
                          fontSize: 10.sp, // Responsive font size
                          fontWeight: FontWeight.w300,
                        ),
                        // Handle overflow
                      ),
                      Text(
                        'Bulb: $bulb',
                        style: GoogleFonts.montserrat(
                          fontSize: 10.sp, // Responsive font size
                          fontWeight: FontWeight.w300,
                        ),
                        overflow: TextOverflow.ellipsis, // Handle overflow
                      ),
                      Text(
                        price,
                        style: GoogleFonts.montserrat(
                          fontSize: 14.sp, // Responsive font size
                          fontWeight: FontWeight.w600,
                        ),
                        // Handle overflow
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            CartActions(),
          ],
        ),
      ),
    );
  }
}
