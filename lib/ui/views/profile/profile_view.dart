import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          "PROFILE",
          style: TextStyle(
            color: const Color(0xff183D3D),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 18.sp, // Responsive font size
            letterSpacing: 1.sp, // Responsive letter spacing
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon:
              Icon(Icons.arrow_back_ios_new, size: 24), // Responsive icon size
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 24), // Responsive icon size
          )
        ],
        backgroundColor: const Color(0xffD5E1DD),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230, // Responsive height
              width: double.infinity,
              color: const Color(0xffD5E1DD),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60, // Responsive radius
                    backgroundImage:
                        const AssetImage("assets/images/img_17.png"),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 100,
                    child: ListTile(
                      title: Text(
                        'Abubakar',
                        style: TextStyle(
                          fontSize: 20.sp, // Responsive font size
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          color: const Color(0xff183D3D),
                        ),
                      ),
                      subtitle: Text(
                        'abubakarpopz@gmail.com',
                        style: TextStyle(
                          fontSize: 10.sp, //Responsive font size
                          fontFamily: "Montserrat",
                          color: const Color(0xff183D3D),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.border_color_outlined,
                            size: 24.sp), // Responsive icon size
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 12, vertical: 20), // Responsive padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        viewModel.toggleSelection(true);
                      },
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 14.sp, // Responsive font size
                          color: const Color(0xff183D3D),
                          fontFamily: "Montserrat",
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(15), // Responsive padding
                        backgroundColor: viewModel.isAccountSelected
                            ? const Color(0xffD5E1DD)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Responsive border radius
                        ),
                        side: BorderSide(
                          color: const Color(0xffD5E1DD),
                          width: 2, // Responsive border width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Responsive spacing
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        viewModel.toggleSelection(false);
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15), // Responsive padding
                        backgroundColor: !viewModel.isAccountSelected
                            ? const Color(0xffD5E1DD)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Responsive border radius
                        ),
                        side: const BorderSide(
                          color: Color(0xffD5E1DD),
                          width: 2, // Responsive border width
                        ),
                      ),
                      child: Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 14.sp, // Responsive font size
                          color: const Color(0xff183D3D),
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (viewModel.isAccountSelected)
              Padding(
                padding:
                    EdgeInsets.only(bottom: 16), // Responsive bottom padding
                child: Column(
                  children: [
                    SizedBox(
                      height:
                          400, // Set a fixed height or use MediaQuery to adjust dynamically
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: viewModel.Titles.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(6.0), // Responsive padding
                            child: ListTile(
                              title: Text(
                                viewModel.Titles[index],
                                style: TextStyle(
                                    fontSize: 14), // Responsive font size
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  viewModel.navigateToDetails(
                                      viewModel.Titles[index]);
                                },
                                icon: Icon(Icons.arrow_forward_ios_outlined,
                                    color: const Color(0xff183D3D),
                                    size: 20 // Responsive icon size
                                    ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff183D3D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Responsive border radius
                          ),
                        ),
                        child: Text(
                          "LOG OUT",
                          style: TextStyle(
                            fontSize: 16.sp, // Responsive font size
                            color: Colors.white,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            else
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8), // Responsive padding
                    child: Container(
                      padding: EdgeInsets.all(16), // Responsive padding
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(
                            8), // Responsive border radius
                        border: Border.all(
                            color: const Color(0xffD5E1DD),
                            width: 2), // Responsive border width
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Deliver To: ',
                                    style: TextStyle(
                                      fontSize: 16.sp, // Responsive font size
                                      fontFamily: "Montserrat",
                                      color: const Color(0xff183D3D),
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.home,
                                        color: const Color(0xff183D3D),
                                        size: 20), // Responsive icon size
                                    label: Text(
                                      'Home',
                                      style: TextStyle(
                                        fontSize: 16.sp, // Responsive font size
                                        fontFamily: "Montserrat",
                                        color: const Color(0xff183D3D),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 1,
                                          horizontal: 1), // Responsive padding
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8.0), // Responsive border radius
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Change',
                                  style: TextStyle(
                                    fontSize: 14.sp, // Responsive font size
                                    fontFamily: "Montserrat",
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff183D3D),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 1,
                                      horizontal: 1), // Responsive padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Responsive border radius
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8), // Responsive spacing
                          Text(
                            'Abubakar',
                            style: TextStyle(
                              fontSize: 14.sp, // Responsive font size
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                              color: const Color(0xff183D3D),
                            ),
                          ),
                          SizedBox(height: 4), // Responsive spacing
                          Text(
                            'Alathoor House, Alathoor (p.o), opposite H&Y auditorium Alathoor center, Kerala,\npin: 680243\n+91 8797563432',
                            style: GoogleFonts.montserrat(
                              fontSize: 14.sp, // Responsive font size
                              color: const Color(0xff183D3D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16), // Responsive spacing
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16), // Responsive padding
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        "Add a New Address",
                        style: TextStyle(
                          fontSize: 14.sp, // Responsive font size
                          fontFamily: "Montserrat",
                          color: const Color(0xff183D3D),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined,
                            color: const Color(0xff183D3D),
                            size: 20), // Responsive icon size
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();
}
