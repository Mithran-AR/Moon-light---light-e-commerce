import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LightCategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const LightCategoryCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 120, // ScreenUtil applied here
        width: 110, // ScreenUtil applied here
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10), // ScreenUtil applied here
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // ScreenUtil applied here
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(20), // ScreenUtil applied here
                      bottomRight:
                          Radius.circular(20), // ScreenUtil applied here
                    ),
                  ),
                  padding: EdgeInsets.all(8.0), // ScreenUtil applied here
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13, // ScreenUtil applied here
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
