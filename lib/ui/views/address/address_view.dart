import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'address_viewmodel.dart';

class AddressView extends StackedView<AddressViewModel> {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddressViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 358.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: Color(0xffD5E1DD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver To: ',
                          style: GoogleFonts.montserrat(
                            fontSize: 14.sp, // ScreenUtil applied here
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 18.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home,
                              color: Color(0xff183D3D),
                              size: 16.sp, // Responsive icon size
                            ),
                            label: Text(
                              'Home',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Color(0xff183D3D),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white38,

                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 20.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Change',
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff183D3D),
                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0,
                      indent: 5,
                      endIndent: 1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Abubakar",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Alathoor House, Alathoor (p.o), opposite H&Y auditorium Alathoor center, Kerala,\npin: 680243',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 358.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver To: ',
                          style: GoogleFonts.montserrat(
                            fontSize: 14.sp, // ScreenUtil applied here
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 18.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home_work_outlined,
                              color: Color(0xff183D3D),
                              size: 16.sp, // Responsive icon size
                            ),
                            label: Text(
                              'office',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Color(0xff183D3D),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white38,

                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 20.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff183D3D),
                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0,
                      indent: 5,
                      endIndent: 1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Abubakar",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Alathoor House, Alathoor (p.o), opposite H&Y auditorium Alathoor center, Kerala,\npin: 680243',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                TextButton(
                  onPressed: () {
                    viewModel.gotoadresschange();
                  },
                  child: Text(
                    "Add new adress",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
        bottomNavigationBar:Padding(
          padding: EdgeInsets.all(10.0),
          child:  Row(
            children: [
              Text(
                '₹ 26000/-',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp, // ScreenUtil applied here
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                '₹ 24000/-',
                style: GoogleFonts.montserrat(
                    fontSize: 14.sp, // ScreenUtil applied here
                    fontWeight: FontWeight.w500,
                    color: Color(0xff186B2F)),
              ),
              SizedBox(width: 80,),
              ElevatedButton(
                onPressed: () {
             viewModel.gotoordersummery();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff183D3D), // Button color
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
                  'continue',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

  @override
  AddressViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddressViewModel();
}
