import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Quantitybutton extends StatefulWidget {
  @override
  _QuantitybuttonState createState() => _QuantitybuttonState();
}

class _QuantitybuttonState extends State<Quantitybutton> {
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
            // color: Colors.green,
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
                      height: 28.h, // Adjust height for better button size
                      width: 28.w, // Adjust width for better button size
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
                    fontSize: 16.sp,
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
                      height: 28.h, // Adjust height for better button size
                      width: 28.w, // Adjust width for better button size
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
        ],
      ),
    );
  }
}
