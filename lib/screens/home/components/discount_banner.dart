import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298), borderRadius: BorderRadius.circular(20)),
      child: Text.rich(TextSpan(
          text: "A Summer Reveals\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: "Hotels",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ])),
    );
  }
}