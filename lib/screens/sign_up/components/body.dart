import 'package:books/components/custom_surffix_icon.dart';
import 'package:books/components/default_button.dart';
import 'package:books/components/social_button.dart';
import 'package:books/constants.dart';
import 'package:books/screens/sign_in/sign_in_screen.dart';
import 'package:books/screens/sign_up/components/sign_up_form.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:books/components/form_error.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton(
                      icon: "assets/icons/facebook-2.svg", press: () {}),
                  socialButton(
                      icon: "assets/icons/google-icon.svg", press: () {}),
                  socialButton(icon: "assets/icons/twitter.svg", press: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: getProportionateScreenWidth(20)),
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, SignInScreen.routeName),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: primaryColor),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
