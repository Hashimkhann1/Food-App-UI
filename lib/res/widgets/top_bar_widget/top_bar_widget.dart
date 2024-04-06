import 'package:flutter/material.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/res/widgets/my_text.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
