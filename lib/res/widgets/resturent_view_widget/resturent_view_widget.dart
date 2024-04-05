import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/res/widgets/my_text.dart';

class ResturentViewWidget extends StatelessWidget {
  final String restImage;
  const ResturentViewWidget({super.key,required this.restImage});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width * 0.64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 100.0,
            spreadRadius: 1.0,
            blurStyle: BlurStyle.inner
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(restImage),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.only(top: 4,left: 2,right: 2),
                  decoration: BoxDecoration(
                    color: MyColors.whiteColor,
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    color: MyColors.lightBlue,
                    size: 19,
                  ),
                )
              )
            ],
          ),

          Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            decoration: BoxDecoration(
              color: MyColors.whiteColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),bottomLeft: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: MyText(title: "Main Road",fontSize: 17,fontWeight: FontWeight.w500,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///// location icon and km
                    Row(
                      children: [
                        Image.asset('images/location.png',width: 12,height: 16,fit: BoxFit.fill,),
                        SizedBox(width: width * 0.006,),
                        MyText(title: '10 KM',fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600,)
                      ],
                    ),

                    /////// time //////
                    Row(
                      children: [
                        Image.asset('images/clock.png',width: 14,height: 15,fit: BoxFit.fill,),
                        SizedBox(width: width * 0.006,),
                        MyText(title: '15 min',fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600,)
                      ],
                    ),

                    /////// rating //////
                    Row(
                      children: [
                        Image.asset('images/rating.png',width: 14,height: 15,fit: BoxFit.fill,),
                        SizedBox(width: width * 0.006,),
                        MyText(title: '4.7',fontSize: 13,color: Colors.grey,fontWeight: FontWeight.w600,)
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
