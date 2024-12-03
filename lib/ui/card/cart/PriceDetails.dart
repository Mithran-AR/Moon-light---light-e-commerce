import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class PriceDetails extends StatelessWidget {
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
              'Price (3 items)',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '₹ 69,300/-',
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
            Text(
              'Discount',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '₹ -1,200/-',
              style: GoogleFonts.montserrat(
                  fontSize: 14.sp, // ScreenUtil applied here
                  fontWeight: FontWeight.w500,
                  color: Colors.green),
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
                      color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Divider(
          color: Colors.grey,
          thickness: 1.h, // Responsive thickness
          height: 1.h, // Responsive height
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount',
              style: GoogleFonts.montserrat(
                fontSize: 16.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '₹ 68,100/-',
              style: GoogleFonts.montserrat(
                fontSize: 16.sp, // ScreenUtil applied here
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
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
