import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/presentation/widgets/sign_up_sign_in_background.dart';

class SignUpSignInScreen extends StatefulWidget {
  const SignUpSignInScreen({super.key});

  @override
  State<SignUpSignInScreen> createState() => _SignUpSignInScreenState();
}

class _SignUpSignInScreenState extends State<SignUpSignInScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SignUpSignInBackground(
          child: Column(
            children: [
              SizedBox(height: 518),

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
              SizedBox(height: 15),

              //-------------------Sub title -------
              Text(
                "Thousand of people are usign silent moon \n for smalls meditation ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 78),

              //----------------------Sign up Button -------------
              SizedBox(
                width: screenWidth < 300 ? screenWidth : 374,
                height: 63,
                child: ElevatedButton(
                  //-----------------Navigate to login screen ---------
                  onPressed: () {
                     Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.loginScreen,
                        (route) => false,
                      );
                    // if(!mounted)return;
                    // WidgetsBinding.instance.addPostFrameCallback((_) {
                    //   Navigator.pushNamedAndRemoveUntil(
                    //     context,
                    //     AppRoutes.loginScreen,
                    //     (route) => false,
                    //   );
                    // });
                  },

                  child: Text("Sign up"),
                ),
              ),

              //AppSpacing.h20,
              SizedBox(height: 20),

              //---------------Link Text -------------
              GestureDetector(
                onTap: () {
                   Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.signupScreen,
                        (route) => false,
                      );
                  // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   Navigator.pushNamedAndRemoveUntil(
                  //     context,
                  //     AppRoutes.signupScreen,
                  //     (route) => false,
                  //   );
                  // });
                },

                child: RichText(
                  text: TextSpan(
                    text: "Already have an account ? ",
                    style: textTheme.titleSmall!.copyWith(
                      color: Colors.black54,
                    ),
                    children: [
                      TextSpan(
                        text: "  LOGIN",
                        style: textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80,),
            
            ],
          ),
        ),
      ),
    );
  }
}
