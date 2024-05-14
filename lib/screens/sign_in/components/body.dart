import 'package:books/components/social_button.dart';
import 'package:books/constants.dart';
import 'package:books/screens/sign_in/components/sign_in_form.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),

              Text(
                "Welcome back",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: getProportionateScreenWidth(16))),
                   Text("Sign Up", style: TextStyle(fontSize: getProportionateScreenWidth(16),color: primaryColor)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
