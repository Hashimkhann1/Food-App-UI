import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/res/widgets/my_text.dart';
import 'package:foodappui/res/widgets/resturent_view_widget/resturent_view_widget.dart';
import 'package:foodappui/view/home_view/food_categories_view/food_categories_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: MyColors.lightGray,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              //////// top bar ///////
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.lightBlue,
                      radius: 26,
                      backgroundImage: AssetImage('images/myprofile.png',),
                    ),
        
                    ////// location icon and text///////
                    Row(
                      children: [
                        Image.asset('images/location.png',height: 30,),
                        SizedBox(width: 10,),
                        MyText(
                          title: 'Peshawar, Pakistan',
                          fontWeight: FontWeight.w600,
                          color: MyColors.darkGray,
                          fontSize: 15,
                        )
                      ],
                    ),
        
                    Stack(
                      children: [
                        Image.asset('images/notification.png',height: 30,),
                        Positioned(
                          top: 4,
                          right: 1,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: MyColors.lightBlue,
                                shape: BoxShape.circle),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.028,
              ),
        
              /////// form textField //////
              Container(
                height: height * 0.05,
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  style: TextStyle(
                    height: 2.0,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 25,
                    ),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    filled: true,
                    fillColor: MyColors.whiteColor,
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColors.whiteColor),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.026,
              ),
        
              /////// discount Card ////
              Container(
                height: height * 0.16,
                padding: EdgeInsets.symmetric(horizontal: width * 0.12),
                decoration: BoxDecoration(
                    color: MyColors.lightBlue,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: width * 0.36,
                      child: MyText(
                        title: "Get 30% Discount",
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: MyColors.whiteColor,
                        maxLines: 2,
                        height: 1.16,
                      ),
                    ),
                    Image.asset('images/discount_image.png',width: width * 0.33,height: height * 0.33,)
                  ],
                ),
              ),
        
              /////// food categories ////
              SizedBox(height: height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodCategriesView(imagePath: 'images/dishes.png',title: "Dishes",),
                  FoodCategriesView(imagePath: 'images/pizza.png',title: "Pizza",),
                  FoodCategriesView(imagePath: 'images/drink.png',title: "Drinks",),
                  FoodCategriesView(imagePath: 'images/desert.png',title: "Desert",),
                ],
              ),
              SizedBox(height: height * 0.03,),
        
              ///// Resturents //////
              MyText(title: "Resturants",fontSize: 24,fontWeight: FontWeight.w700,),
              SizedBox(height: height * 0.01,),
              Container(
                height: height * 0.27,
                color: MyColors.lightGray,
                child: SizedBox.expand(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ResturentViewWidget(restImage: 'images/resturant1.png',),
                      SizedBox(width: width * 0.07,),
                      ResturentViewWidget(restImage: 'images/resturant1.png',),
                      SizedBox(width: width * 0.07,),
                      ResturentViewWidget(restImage: 'images/resturant1.png',),
        
                    ],
                  ),
                ),
              ),

              SizedBox(height: height * 0.03,),
              Container(
                height: height * 0.26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: AssetImage('images/lastImage.png',),
                    fit: BoxFit.cover
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
