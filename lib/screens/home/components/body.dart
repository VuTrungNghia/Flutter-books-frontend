import 'package:books/components/categories.dart';
import 'package:books/screens/home/components/discount_banner.dart';
import 'package:books/screens/home/components/home_header.dart';
import 'package:books/screens/home/components/section_offer.dart';
import 'package:books/screens/home/components/section_product.dart';
import 'package:books/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        HomeHeader(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        DiscountBanner(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        Categories(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SectionOffers(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        ProductSection(),
         SizedBox(
          height: getProportionateScreenWidth(20),
        ),
      ],
    )));
  }
}

