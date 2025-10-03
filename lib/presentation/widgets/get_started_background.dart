import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';

class GetStartedBackground extends StatelessWidget {
  final Widget child;
  
  const GetStartedBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    
    return  Stack(
        children: [

          
          
           //===========================Small Circle left ================
           Positioned(
            top: 346,
            left: 27,
            child: Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                color: Color(0xffA6ADFB),
                shape: BoxShape.circle,
              ),
            ),
          
            ),
           //===========================Medium Circle left =================
           Positioned(
            top: 357,
            left: 33,
            child:  Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: Color(0xffA6ADFB),
                shape: BoxShape.circle,
              ),
            ),
            ),
          

          //========================= cloud left side ====================
          Positioned(
            top: 374,
            child: Image.asset(AssetsImagesPath.cloud,width: 50,height: 24,)
            ),
          

          //=======================Circle 1===============
        
           Positioned(
            top: 369,
            left: 0,
            right: 0,
            child: Image.asset(
              AssetsImagesPath.ellipse,
              height: 492,
              width: 492,
            ),
          ),

           //=======================Circle 2===============
          
      
           Positioned(
            top: 404,
            left: 4,
            right: 4,
            child: Container(
              //padding: EdgeInsets.all(35),
              height: 422,
              width: 422,
              decoration: BoxDecoration(
                color: Color(0xff99A1FF),
                shape: BoxShape.circle,
              ),
           ),),


          //=======================Circle 3 ===============
           Positioned(
            top: 438,
            left: 34,
            right:34,
            child: Image.asset(
              AssetsImagesPath.ellipse,
              height: 354,
              width: 354,
            ),
          ),

          //========================== Circle 4 =====================
           Positioned(
            top: 473,
            left: 35,
            right: 35,
            child: Container(
              //padding: EdgeInsets.all(35),
              height: 248,
              width: 248,
              decoration: BoxDecoration(
                color: Color(0xff99A1FF),
        
                shape: BoxShape.circle,
              ),
           ),),


           //===================
           //266
            Positioned(
            top: 654,
             left: 0,
             right:0,
            child: Container(
              height: 266,
              width: 616,
              decoration: BoxDecoration(
                color: Color(0xff8C96FF),
        
                shape: BoxShape.rectangle,
              ),
            )
          ),


          //======================= Man siting  ===============
           Positioned(
           // top:397,
           top: 409,
            left: 9,
            right:7,
            child: Image.asset(
              AssetsImagesPath.getStartMan,
              width: 430,
              height: 258,
            ),
          ),

          //======================= Big Cloud ===============
           Positioned(
        
           top: 434,
           // left: 9,
            right:0,
            child: Image.asset(
              AssetsImagesPath.cloud,
              width: 114,
              height: 55,
            ),
          ),

          //======================= Big Bird ===============
           Positioned(
           top: 410,
           // left: 9,
            right:135,
            child: Image.asset(
              AssetsImagesPath.bird,
              width: 36,
              height: 14,
            ),
          ),

          //======================= Small Bird ===============
           Positioned(
           top: 432,
           left: 53,
          
            child: Image.asset(
              AssetsImagesPath.bird,
              width: 22,
              height: 8,
            ),
          ),





           


          //---------- child -----------------
        
         Align(alignment: Alignment.topCenter, child: child),


        ],
      );
  }
}