import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/core/utils/validator.dart';
import 'package:meditation_ui_app/presentation/widgets/auth_background.dart';
import 'package:meditation_ui_app/presentation/widgets/custom_elevated_button.dart';
import 'package:meditation_ui_app/presentation/widgets/on_tap_link_text.dart';
import 'package:meditation_ui_app/presentation/widgets/password_form_field.dart';
import 'package:meditation_ui_app/presentation/widgets/social_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  //======================== Controller ===============
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isEmailValidate = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: Colors.white,

      //=====================Body Section ================
      body: AuthBackground(
        isVisibility: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  SizedBox(height: 33.h),

                  //=================== Title ===================
                  Text(
                    "We are what we do",
                    style: textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                      // ------34 font size
                    ),
                  ),
                  SizedBox(height: 33.h),

                  //====================== Login with facebook button ====================
                  SocialLoginButton(
                    icon: FontAwesomeIcons.facebook,
                    iconColor: Colors.white,
                    buttonName: "Continue with facebook",
                  ),

                  //==================== Login with google Button==========
                  //AppSpacing.v20,
                  SizedBox(height: 20.h),

                  SocialLoginButton(
                    backgroundColor: Colors.white, //Color(0xffEBEAEC)
                    border: Border.all(color: Color(0xffEBEAEC)),
                    textColor: Colors.black,
                    iconColor: const Color.fromARGB(255, 16, 241, 136),
                    icon: FontAwesomeIcons.google,

                    buttonName: "Continue with google",
                  ),

                  //AppSpacing.v40,
                  SizedBox(height: 40.h),

                  //--------------------
                  Text("OR LOG IN WITH EMAI",style: textTheme.titleSmall!.copyWith(
                    color: Color(0xffA1A4B2),
                  ),),
                 // AppSpacing.v40,
                  SizedBox(height: 40.h),

                  //=================== Email Field Section ===============
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    textInputAction: TextInputAction.next,

                    keyboardType: TextInputType.emailAddress,
                    style: textTheme.titleMedium!.copyWith(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        Validator.emailValidator(value) == null? isEmailValidate = true: isEmailValidate = false;
                      });
                      
                    },

                    validator: Validator.emailValidator,
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      suffixIcon: isEmailValidate
                          ? Icon(Icons.check, color: Colors.green)
                          : Icon(Icons.close, color: Colors.red),
                    ),
                  ),

                  AppSpacing.v20,

                  //=================== Password Field Section ===============
                  PasswordFormField(passwordController: _passwordController),

                  AppSpacing.v30,
                  //====================== Login Button ======= ===========
                  CustomElevatedButton(
                    onPressed: () => _onTapLoginButton(),
                    buttonName: "Login",
                  ),

                  SizedBox(height: 20),

                  //=========================== Forgot password ===========
                  Center(child: Text("Forgot password")),

                  //AppSpacing.v105,
                  SizedBox(height: 104.h),

                  //================ Link text =======================
                  OnTapLinkText(
                    onTap: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signupScreen, (predicate)=> false),
                    title: "Don't have an account ? ",
                    linkTextName: " Signup",
                  ),

                  //----
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //==================== Login Button ===================
  void _onTapLoginButton() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, AppRoutes.dashboardScreen);
    }
  }

  //==================== Dispose All Controller =============
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
