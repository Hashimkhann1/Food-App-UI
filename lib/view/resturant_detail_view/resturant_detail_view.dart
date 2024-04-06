import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:foodappui/res/my_colors/my_colors.dart';
import 'package:foodappui/res/widgets/my_text.dart';
import 'package:foodappui/res/widgets/top_bar_widget/top_bar_widget.dart';

class ResturantDetailView extends StatefulWidget {
  final String restImage;

  ResturantDetailView({super.key,required this.restImage});

  @override
  State<ResturantDetailView> createState() => _ResturantDetailViewState();
}

class _ResturantDetailViewState extends State<ResturantDetailView> {

  bool _isTop = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 100) ,() {
      _isTop = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: MyColors.lightGray,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ////// resturant map image //////
          Image.asset('images/resMap.png',width: width,height: height * 0.82,fit: BoxFit.cover,),

          /////// back icon ///////
          Positioned(
            top: 52,
            left: 10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Icon(CupertinoIcons.back,size: 40,color: MyColors.lightBlue,),
              ),
            ),
          ),

          ////// resturant images ////
          AnimatedPositioned(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeIn,
            left: 0,
            bottom: _isTop ?  - height * 0.26 : - height * 0.42,
            child: Container(
              width: width,
              height: height * .26,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 26),
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 6,
                    blurRadius: 30
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //// resturent imag /////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                          child: Image.asset(widget.restImage,width: width * 0.34,height: height * 0.12,fit: BoxFit.cover,)
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //////// returant name
                          MyText(title: "Resturent Name",fontSize: 16,fontWeight: FontWeight.w600,),

                          ////// rating stars /////
                          Row(
                            children: [
                              Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 16,),
                              Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 16,),
                              Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 16,),
                              Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 16,),
                              Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 16,),
                            ],
                          ),

                          SizedBox(height: height * 0.02,),
                          Row(
                            children: [
                              MyText(title: 'Open Now',color: Colors.grey.shade400,fontSize: 14,),
                              SizedBox(width: width * 0.03,),
                              MyText(title: '4.5 KM away',color: Colors.grey.shade400,fontSize: 12,),
                            ],
                          )
                        ],
                      ),

                      //// afvorite icon
                      Icon(CupertinoIcons.heart)

                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
