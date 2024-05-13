import 'package:books/components/section_title.dart';
import 'package:books/components/special_offer_card.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class SectionOffers extends StatelessWidget {
  const SectionOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Flash Deal",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SectionOfferCard(
                category: "Smartphone",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 18,
                press: () {},
              ),
              SectionOfferCard(
                category: "Fashion",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 20,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

