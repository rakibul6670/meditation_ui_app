import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            top: 346.w,
            left: 27.w,
            child: Container(
              height: 6.h,
              width: 6.w,
              decoration: BoxDecoration(
                color: Color(0xffA6ADFB),
                shape: BoxShape.circle,
              ),
            ),
          
            ),
           //===========================Medium Circle left =================
           Positioned(
            top: 357.h,
            left: 33.h,
            child:  Container(
              height: 12.h,
              width: 12.w,
              decoration: BoxDecoration(
                color: Color(0xffA6ADFB),
                shape: BoxShape.circle,
              ),
            ),
            ),
          

          //========================= cloud left side ====================
          Positioned(
            top: 374.h,
            child: Image.asset(
              AssetsImagesPath.cloud,width: 50.w,height: 24.h,)
            ),
          

          //=======================Circle 1===============
        
           Positioned(
            top: 369.h,
            left: 0.w,
            right: 0.w,
            child: Container(
            //padding: EdgeInsets.all(35),
            height: 492.h,
            width: 492.w,
            decoration: BoxDecoration(
            color: Color(0xff9EA6FF),
            shape: BoxShape.circle,
                border: Border.all(color: Color(0xff9AA2FD))
            ),),
            // child: Image.asset(
            //   AssetsImagesPath.ellipse,
            //   height: 492.h,
            //   width: 492.w,
            // ),
          ),

           //=======================Circle 2===============
           Positioned(
            top: 404.h,
            left: 4.w,
            right: 4.w,
            child: Container(
              //padding: EdgeInsets.all(35),
              height: 422.h,
              width: 422.w,
              decoration: BoxDecoration(
                color: Color(0xff9AA2FD),
                shape: BoxShape.circle,

              ),
           ),),


          //=======================Circle 3 ===============
           Positioned(
            top: 438.h,
            left: 30.w, //34
            right:30.w, //34
               child: Container(
                 padding: EdgeInsets.all(35),
                 height: 248.h,
                 width: 248.w,
                 decoration: BoxDecoration(
                   color: Color(0xff9EA6FF),
                   shape: BoxShape.circle,
                 ),
               )
            // child: Image.asset(
            //   AssetsImagesPath.ellipse,
            //   height: 354.h,
            //   width: 354.w,
            // ),
          ),

          //========================== Circle 4 =====================
           Positioned(
            top: 473.h,
            left: 35.w,
            right: 35.w,
            bottom: 35,
            child: Container(
              padding: EdgeInsets.all(35),
              height: 248.h,
              width: 248.w,
              decoration: BoxDecoration(
                color: Color(0xff9EA6FF),
                shape: BoxShape.circle,
              ),
           ),),


           //===================
           //266
            Positioned(
            top: 654.h,
             left: 0.w,
             right:0.w,
            child: Container(
              height: 266.h,
              width: 616.w,
              decoration: BoxDecoration(
                color: Color(0xff8C96FF),
        
                shape: BoxShape.rectangle,
              ),
            )
          ),


          //======================= Man siting  ===============
           Positioned(
           // top:397,
           top: 409.h,
            left: 9.w,
            right:7.w,
            child: Image.asset(
              AssetsImagesPath.getStartMan,
              width: 430.w,
              height: 258.h,
            ),
          ),

          //======================= Big Cloud ===============
           Positioned(
        
           top: 434.h,
           // left: 9,
            right:0.w,
            child: Image.asset(
              AssetsImagesPath.cloud,
              width: 114.w,
              height: 55.h,
            ),
          ),

          //======================= Big Bird ===============
           Positioned(
           top: 410.h,
           // left: 9,
            right:135.w,
            child: Image.asset(
              AssetsImagesPath.bird,
              width: 36.w,
              height: 14.h,
            ),
          ),

          //======================= Small Bird ===============
           Positioned(
           top: 432.h,
           left: 53.w,
          
            child: Image.asset(
              AssetsImagesPath.bird,
              width: 22.w,
              height: 8.h,
            ),
          ),





           


          //---------- child -----------------
        
         Align(alignment: Alignment.topCenter, child: child),


        ],
      );
  }
}