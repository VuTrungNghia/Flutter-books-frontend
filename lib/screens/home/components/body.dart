import 'package:books/components/product_card.dart';
import 'package:books/components/special_offer_card.dart';
import 'package:books/components/categories.dart';
import 'package:books/components/section_title.dart';
import 'package:books/constants.dart';
import 'package:books/models/products.dart';
import 'package:books/screens/home/components/category_card.dart';
import 'package:books/screens/home/components/discount_banner.dart';
import 'package:books/screens/home/components/home_header.dart';
import 'package:books/screens/home/components/section_offer.dart';
import 'package:books/screens/home/components/section_product.dart';
import 'package:books/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

