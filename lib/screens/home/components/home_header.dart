import 'package:books/components/icon_btn_with_count.dart';
import 'package:books/components/search_field.dart';
import 'package:books/screens/cart/cart_screen.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const SearchField(),
        IconBtnWithCount(
            svg: "assets/icons/Cart Icon.svg",
            numberOfItems: 0,
            press: () => Navigator.pushNamed(context, CartScreen.routeName)),
        IconBtnWithCount(
            svg: "assets/icons/Bell.svg", numberOfItems: 3, press: () {}),
      ]),
    );
  }
}