import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/utils/validator.dart';

class PasswordFormField extends StatefulWidget {
 
  final TextEditingController passwordController;
  
  const PasswordFormField({super.key,  required this.passwordController});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      autovalidateMode: AutovalidateMode.onUnfocus,
      textInputAction: TextInputAction.next,
      style: textTheme.titleMedium!.copyWith(color: Colors.black),

      obscureText:isHidePassword,

      validator: Validator.passwordValidator,
      controller: widget.passwordController,
      decoration: InputDecoration(
        hintText: "Enter your password",
        suffixIcon: GestureDetector(
          onTap: () {
            isHidePassword = !isHidePassword;
            setState(() {
              
             
            });
          },
          child: Icon(
            isHidePassword ? Icons.visibility_off : Icons.visibility,
          ),
        ),
      ),
    );
  }
}
