import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentation/widgets/auth_background.dart';
import 'package:meditation_ui_app/presentation/widgets/social_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //=========================== isHiden Password ==============
  bool _isHidePassword = true;

  //======================== Controller ===============
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      //=====================Body Section ================
      body: AuthBackground(
        isVisibility: false,
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 33),

                //=================== Title ===================
                Text(
                  "We are what we do",
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
                  border: Border.all(color: Color(0xffEBEAEC),),
                  textColor: Colors.black,
                  iconColor: const Color.fromARGB(255, 16, 241, 136),
                  icon: FontAwesomeIcons.google,

                  buttonName: "Continue with google",
                ),

                AppSpacing.v40,

                //--------------------
                Text("OR LOG IN WITH EMAI"),
                AppSpacing.v40,

                //=================== Email Field Section ===============
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUnfocus,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  style: textTheme.titleMedium!.copyWith(color: Colors.black),

                  //validator: ,
                  controller: _emailController,
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
                  controller: _passwordController,
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

                AppSpacing.v30,
                //====================== Login Button ======= ===========
                SizedBox(
                  height: 63,
                  width: 374,
                  child: ElevatedButton(
                    onPressed: () {},
                    // Navigator.pushNamed(context, AppRoutes.dashboardScreen),
                    child: Text("Login"),
                  ),
                ),

                SizedBox(height: 20),

                //=========================== Forgot password ===========
                Center(child: Text("Forgot password")),

                AppSpacing.v105,

                //================ Link text =======================
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.signupScreen),

                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account ?",
                      children: [
                        TextSpan(
                          text: " Signup",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
