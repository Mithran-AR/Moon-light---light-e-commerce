import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Priceorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price Details',
          style: GoogleFonts.montserrat(
            fontSize: 16.sp, // ScreenUtil applied here
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price of item ',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '₹ 26,000/-',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Discount (',
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ), // Normal color
                  ),
                  TextSpan(
                    text: '5% off',
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w500,
                      color: Color(0xff186B2F),
                    ), // Color for discount percentage
                  ),
                  TextSpan(
                    text: ')',
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ), // Normal color
                  ),
                ],
              ),
            ),
            Text(
              '₹ -1,300/-',
              style: GoogleFonts.montserrat(
                  fontSize: 14.sp, // ScreenUtil applied here
                  fontWeight: FontWeight.w500,
                  color: Color(0xff186B2F)),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Charges',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 4.w),
                Text(
                  '₹ 400/-',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp, // ScreenUtil applied here
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Free Delivery',
                  style: GoogleFonts.montserrat(
                      fontSize: 14.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w500,
                      color: Color(0xff186B2F)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        HyphenatedLine(),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '₹ 24,700/-',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        HyphenatedLine(),
        SizedBox(height: 10.h),
        Text(
          'You saved up to Rs.1,300/- on this order ',
          style: GoogleFonts.montserrat(
              fontSize: 14.sp, // ScreenUtil applied here
              fontWeight: FontWeight.w600,
              color: Color(0xff186B2F)),
        ),
      ],
    );
  }
}

class PriceDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isDiscount;
  final bool isFree;
  final bool isTotal;

  PriceDetailRow({
    required this.label,
    required this.value,
    this.isDiscount = false,
    this.isFree = false,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 18.sp : 16.sp,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isDiscount ? Colors.red : Colors.black,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 18.sp : 16.sp,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isFree ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class HyphenatedLine extends StatelessWidget {
  final double dashWidth;
  final double dashHeight;
  final double spaceBetweenDashes;
  final Color color;

  const HyphenatedLine({
    this.dashWidth = 6.0,
    this.dashHeight = 1.0,
    this.spaceBetweenDashes = 4.0,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double totalWidth = constraints.constrainWidth();
        int dashCount = (totalWidth / (dashWidth + spaceBetweenDashes)).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (index) {
            return Container(
              width: dashWidth,
              height: dashHeight,
              color: color,
              margin: EdgeInsets.only(right: spaceBetweenDashes),
            );
          }),
        );
      },
    );
  }
}
