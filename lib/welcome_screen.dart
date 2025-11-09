import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_ui_app/core/routes/app_pages.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/presentation/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //========================== Body Section =======================
      body: SafeArea(child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/welcome_background.png")),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [

              SizedBox(height: 77.h,),
              //===================== Title =============
              Text("Wecome to Sleep",style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
                letterSpacing: 2,
                 color: Color(0xFFE6E7F2),
              ),),

              SizedBox(height: 15.h,),

              //===================== SubTitle =============
              Text("Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                fontFamily: "Inter",
                letterSpacing: 2,
                 color: Color(0xFFE6E7F2),
              ),),

              SizedBox(height: 448.h,),

              //=================== Get Started Button ========
              CustomElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.signupSignInScreen);
                  },
                  buttonName:"Get Started"
              ),


            ],
          ),
        ),
      )),
      
    );
  }
}
