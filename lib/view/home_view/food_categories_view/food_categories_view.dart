import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/res/widgets/my_text.dart';

class FoodCategriesView extends StatelessWidget {
  final String imagePath;
  final String title;
  final double? imageHeight;
  final double? imageWidth;
  const FoodCategriesView(
      {super.key,
      required this.imagePath,
      required this.title,
      this.imageHeight,
      this.imageWidth});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;


    return Container(
      width: width * 0.20,
      height: height * 0.10,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 3),
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          color: MyColors.whiteColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            height: height * 0.07,
            width: width * 0.14,
          ),
          MyText(
            title: title,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
