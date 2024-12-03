import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'adresschange_viewmodel.dart';

class AdresschangeView extends StackedView<AdresschangeViewModel> {
  const AdresschangeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdresschangeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Form(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Add a new address",
                          style: GoogleFonts.montserrat(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff183D3D),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 500.0.w, // Set the desired width
                    height: 50.0.h, // Set the desired height
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'FULL NAME',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff262626))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 500.0.w, // Set the desired width
                    height: 50.0.h, // Set the desired height
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'PHONE NUMBER',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff262626))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    width: 500.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "HOUSE NUMBER,BUILDING NAME*",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff262626)))),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    width: 500.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "roadname,area,colony",
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff262626)))),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 172.0.w, // Set the desired width
                        height: 40.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'State',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 172.0.w, // Set the desired width
                        height: 40.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'city',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 172.0.w, // Set the desired width
                        height: 40.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'pincode',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 172.0.w, // Set the desired width
                        height: 40.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_disabled),
                            prefixIconColor: Colors.white,
                            filled: true,
                            fillColor: Color(0xff183D3D),
                            hintText: 'uselocation',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 500.0.w, // Set the desired width
                    height: 50.0.h, // Set the desired height
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'landmark*',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff262626))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80.0.w, // Set the desired width
                        height: 40.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.home),
                            prefixIconColor: Color(0xff183D3D),
                            hintText: 'home',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 80.0.w, // Set the desired width
                        height: 42.0.h, // Set the desired height
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.home_work_outlined),
                            prefixIconColor: Color(0xff183D3D),
                            hintText: 'office',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0xff262626))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.gotoadress();
                    },
                    child: Text(
                      "Save Adress",
                      style: TextStyle(
                          color: Color(0xff183D3D),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  @override
  AdresschangeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdresschangeViewModel();
}
