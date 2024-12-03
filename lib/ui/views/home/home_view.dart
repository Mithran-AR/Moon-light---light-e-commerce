import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:moonlight/ui/common/app_colors.dart';
import 'package:moonlight/ui/common/ui_helpers.dart';

import '../shopbycard.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/Group.png",
          height: 20,
          width: 120,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Color(0xff183D3D)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Color(0xff183D3D)))
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(16)),
            Container(
                decoration: BoxDecoration(
                  color: Color(0xffD5E1DD),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15), // ScreenUtil applied here
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 18, // ScreenUtil applied here
                          fontFamily: "Sen",
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 14), // ScreenUtil applied here
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff8A8A8A),
                          size: 35, // ScreenUtil applied here
                        ),
                        suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.mic,
                                    color: Colors.black54,
                                    size: 30), // ScreenUtil applied here
                                onPressed: () {
                                  // Action for mic icon
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.camera_alt,
                                    color: Colors.black54,
                                    size: 30), // ScreenUtil applied here
                                onPressed: () {
                                  // Action for camera icon
                                },
                              ),
                            ])),
                  ),
                )),
            SizedBox(
              height: 200, // ScreenUtil applied here
              child: Center(
                child: CarouselSlider.builder(
                  itemCount: viewModel.banners.length,
                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) =>
                          Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(viewModel.banners[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.circular(10), // ScreenUtil applied here
                    ),
                  ),
                  options: CarouselOptions(
                    height: 160, // ScreenUtil applied here
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      viewModel.updateIndex(index);
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "EXPLORE",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey,
              height: 150,
              child: ListView.builder(
                itemCount: viewModel.lightcards.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return viewModel.lightcards[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Text(
                    "Shop by Room",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: viewModel.ShopByRoomItems.length,
                itemBuilder: (context, index) {
                  final items = viewModel.ShopByRoomItems[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Shopbycard(
                          imagePath: items[0].imagepath,
                          title: items[0].title,
                        ),
                        Shopbycard(
                          imagePath: items[1].imagepath,
                          title: items[1].title,
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
