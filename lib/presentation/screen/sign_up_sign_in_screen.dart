import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/presentation/widgets/custom_elevated_button.dart';
import 'package:meditation_ui_app/presentation/widgets/on_tap_link_text.dart';
import 'package:meditation_ui_app/presentation/widgets/sign_up_sign_in_background.dart';

class SignUpSignInScreen extends StatefulWidget {
  const SignUpSignInScreen({super.key});

  @override
  State<SignUpSignInScreen> createState() => _SignUpSignInScreenState();
}

class _SignUpSignInScreenState extends State<SignUpSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SignUpSignInBackground(
          child: Column(
            children: [
              SizedBox(height: 438.h),

              //--------------------Title -------------
              Text(
                "We are what we do",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                ),
              ),

              //AppSpacing.h15,
              SizedBox(height: 15.h),

              //-------------------Sub title -------
              Text(
                "Thousand of people are usign silent moon \n for smalls meditation ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 78.h),

              //----------------------Sign up Button -------------
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.signupScreen,
                      (route) => false,
                    );
                  },
                  buttonName: "Sign up",
                ),
              ),

              //AppSpacing.h20,
              SizedBox(height: 20.h),

              //---------------Link Text -------------
              OnTapLinkText(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.loginScreen,
                    (predicate) => false,
                  );
                },
                title: "Already have an account ? ",
                linkTextName: "LOGIN",
              ),

              SizedBox(height: 94.h),
            ],
          ),
        ),
      ),
    );
  }
}
