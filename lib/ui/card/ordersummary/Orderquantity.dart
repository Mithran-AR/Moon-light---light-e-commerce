import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/app_colors.dart';

class Orderquantity extends StatefulWidget {
  @override
  _OrderquantityState createState() => _OrderquantityState();
}

class _OrderquantityState extends State<Orderquantity> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Decrement Button
          Container(
            width: 110.w,
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: decrementQuantity,
                  child: Card(
                    color: Colors.grey,
                    elevation: 4.sp, // Adjust elevation for better look
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(2.r), // Rounded corners
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.sp,
                      ),
                    ),

                    child: Container(
                      height: 25.h, // Adjust height for better button size
                      width: 25.w, // Adjust width for better button size
                      color: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                // Quantity Display
                Text(
                  quantity.toString(),
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10.w),
                // Increment Button
                InkWell(
                  onTap: incrementQuantity,
                  child: Card(
                    color: Colors.grey,
                    elevation: 4.sp, // Adjust elevation for better look
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(2.r), // Rounded corners
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0.sp,
                      ),
                    ),

                    child: Container(
                      height: 25.h, // Adjust height for better button size
                      width: 25.w, // Adjust width for better button size
                      color: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 20.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),

          Container(
            width: 210.w,
            //color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "5% off Discount \n Free Delivery",
                  style: GoogleFonts.montserrat(
                    fontSize: 13.sp, // ScreenUtil applied here
                    fontWeight: FontWeight.w500,
                    color: Color(0xff186B2F),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
