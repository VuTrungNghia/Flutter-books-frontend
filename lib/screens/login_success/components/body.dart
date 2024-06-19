import 'package:books/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:books/components/default_button.dart';
import 'package:books/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: SizeConfig.screenHeight * 0.06),
      Image.asset(
        "assets/images/success.png",
      ),
      SizedBox(height: SizeConfig.screenHeight * 0.08),
      Text("Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      const Spacer(),
      SizedBox(
        width: SizeConfig.screenWidth * 0.6,
        child: defaultButton(text: "Back to Home", press: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        }),
      ),
      const Spacer(),
    ]);
  }
}
