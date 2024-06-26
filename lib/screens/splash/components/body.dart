import 'package:books/components/default_button.dart';
import 'package:books/constants.dart';
import 'package:books/screens/sign_in/sign_in_screen.dart';
import 'package:books/screens/splash/components/splash_content.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        text: splashData[index]['text']!,
                        image: splashData[index]['image']!,
                      ))),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(children: <Widget>[
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      splashData.length, (index) => builDot(index: index)),
                ),
                const Spacer(
                  flex: 3,
                ),
                defaultButton(
                  text: "Continue",
                  press: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                ),
                const Spacer(),
              ]),
            ),
          )
        ],
      ),
    ));
  }

  AnimatedContainer builDot({int index = 0}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? primaryColor : const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


