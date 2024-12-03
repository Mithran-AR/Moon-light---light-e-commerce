import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight/ui/card/category/CategorySec.dart';
import 'package:moonlight/ui/card/category/Categoryfitem.dart';

import 'package:stacked/stacked.dart';

import '../../card/category/Categoryfinal.dart';
import 'category_viewmodel.dart';

class Category extends StackedView<CategoryViewModel> {
  const Category({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "CATEGORY",
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 50.h,
                color: Color(0xff183D3D),
                child: Center(
                    child: Text(
                  "Home Decor",
                  style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontStyle: FontStyle.italic,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Categoryfitem(
                        imagePath: 'assets/images/img_8.png',
                        title: 'Hanging lights',
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategorySec(
                        imagePath: 'assets/images/img_9.png',
                        title: 'wall lights',
                      ),
                      CategorySec(
                        imagePath: 'assets/images/img_10.png',
                        title: ' Lamps',
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Categoryfinal(
                          imagePath1: "assets/images/img_11.png",
                          imagePath2: "assets/images/img_12.png",
                          title1: "Mirrorlights",
                          title2: "Fairylights")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                color: Color(0xff183D3D),
                child: Center(
                    child: Text(
                  "Chandelier",
                  style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontStyle: FontStyle.italic,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Categoryfitem(
                          imagePath: "assets/images/img_13.png",
                          title: "Fairylights")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryViewModel();
}
