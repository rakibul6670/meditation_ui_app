import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/auth_background.dart';
import 'package:meditation_ui_app/presentation/widgets/social_login_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //=========================== isHiden Password ==============
  bool _isHidePassword = true;

  //======================== Controller ===============
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  //===================== Privacy and Policy ===========
  bool _isAgreePolicy = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      //=====================Body Section ================
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                      // WidgetsBinding.instance.addPostFrameCallback((_) {
                      //   Navigator.pushNamedAndRemoveUntil(
                      //     context,
                      //     AppRoutes.loginScreen,
                      //     (route) => false,
                      //   );
                      // });
                    },

                    child: Image.asset(AssetsIconsPath.back),
                  ),
                ),

                SizedBox(height: 133),

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

                  style: textTheme.titleMedium!.copyWith(color: Colors.black),

                  //validator: ,
                  controller: _nameController,
                  decoration: InputDecoration(hintText: "Enter your name"),
                ),

                AppSpacing.v20,

                //=================== Email Field Section ===============
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  style: textTheme.titleMedium!.copyWith(color: Colors.black),

                  //validator: ,
                  //controller:,
                  decoration: InputDecoration(hintText: "Enter your email"),
                ),

                AppSpacing.v20,
                //=================== Password Field Section ===============
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  textInputAction: TextInputAction.next,
                  style: textTheme.titleMedium!.copyWith(color: Colors.black),

                  obscureText: _isHidePassword,

                  //validator: ,
                  //controller:,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isHidePassword = !_isHidePassword;
                          debugPrint("$_isHidePassword");
                        });
                      },
                      child: Icon(
                        _isHidePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),

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
                SizedBox(
                  height: 63,
                  width: 374,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.getStartedScreen,
                      (predicate) => false,
                    ),
                    child: Text("GET STARTED"),
                  ),
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
    );
  }

  //==================== Dispose All Controller =============
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
