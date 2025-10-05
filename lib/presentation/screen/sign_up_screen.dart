import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/core/utils/validator.dart';
import 'package:meditation_ui_app/presentation/widgets/auth_background.dart';
import 'package:meditation_ui_app/presentation/widgets/custom_elevated_button.dart';
import 'package:meditation_ui_app/presentation/widgets/password_form_field.dart';
import 'package:meditation_ui_app/presentation/widgets/social_login_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //======================== Controller ===============
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  //===================== Privacy and Policy ===========
  bool _isAgreePolicy = false;

  //================= validate check============
  bool isNameValidate = false;
  bool isEmailValidate = false;


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: Colors.white,
      //=====================Body Section ================
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  //====================== back Button ================
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.loginScreen,
                          (route) => false,
                        );
                      },

                      child: Image.asset(AssetsIconsPath.back),
                    ),
                  ),

                  SizedBox(height: 28),

                  //=================== Title ===================
                  Text(
                    "Create your account",
                    style: textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                      // ------34 font size
                    ),
                  ),
                  SizedBox(height: 33),

                  //====================== Login with facebook button ====================
                  SocialLoginButton(
                    icon: FontAwesomeIcons.facebook,
                    iconColor: Colors.white,
                    buttonName: "Continue with facebook",
                  ),

                  //==================== Login with google Button==========
                  AppSpacing.v20,

                  SocialLoginButton(
                    backgroundColor: Colors.white, //Color(0xffEBEAEC)
                    border: Border.all(color: Color(0xffEBEAEC)),
                    textColor: Colors.black,
                    iconColor: const Color.fromARGB(255, 16, 241, 136),
                    icon: FontAwesomeIcons.google,

                    buttonName: "Continue with google",
                  ),

                  AppSpacing.v40,

                  //--------------------
                  Text("OR LOG IN WITH EMAI"),
                  AppSpacing.v40,

                  //=================== Name Field Section ===============
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      setState(() {
                        Validator.nameValidator(value) == null? isNameValidate = true: isNameValidate = false;
                      });
                      
                    },

                    style: textTheme.titleMedium!.copyWith(color: Colors.black),

                    validator: Validator.nameValidator,
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      suffixIcon: isNameValidate
                          ? Icon(Icons.check, color: Colors.green)
                          : Icon(Icons.close, color: Colors.red),
                    ),
                  ),

                  AppSpacing.v20,

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

                  AppSpacing.v32,

                  //===================Privacy and Policy =================
                  CheckboxListTile(
                    title: RichText(
                      text: TextSpan(
                        text: "I have read the ",
                        style: textTheme.titleSmall!.copyWith(
                          color: Colors.black54,
                        ),
                        children: [
                          TextSpan(
                            text: " Privacy Policy",
                            style: textTheme.titleSmall!.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    activeColor: Colors.green,

                    value: _isAgreePolicy,
                    onChanged: (value) {
                      setState(() {
                        _isAgreePolicy = !_isAgreePolicy;
                      });
                    },
                  ),

                  AppSpacing.v23,
                  //====================== Login Button ======= ===========
                  CustomElevatedButton(
                    onPressed: () => _onTapSignUpButton(),
                    buttonName: "Sign up",
                  ),

                  SizedBox(height: 20),

                  //forgot password
                  //104

                  //----
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  //======================= Sign up button ==================
  void _onTapSignUpButton() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.getStartedScreen,
        (predicate) => false,
      );
    }
  }

  //==================== Dispose All Controller =============
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
