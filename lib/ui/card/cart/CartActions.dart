import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/app_colors.dart';
import '../../views/productdetails/productdetails_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Cart Actions')),
        body: CartActions(),
      ),
    );
  }
}

class CartActions extends StatefulWidget {
  @override
  _CartActionsState createState() => _CartActionsState();
}

class _CartActionsState extends State<CartActions> {
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
            width: 100.w,

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
          SizedBox(
            width: 10.w,
          ),

          Container(
            width: 240.w,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Color(0xff183D3D)),
                  label: Text(
                    'DELETE',
                    style: TextStyle(color: Color(0xff183D3D)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD5E1DD),
                    minimumSize: Size(20.w, 30.h), // Adjust button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                ),


                // Buy Now Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductdetailsView(),));
                  },
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff183D3D),
                    minimumSize: Size(20.w, 30.h), // Adjust button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
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
