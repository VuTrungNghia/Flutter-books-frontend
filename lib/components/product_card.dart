import 'package:books/constants.dart';
import 'package:books/models/products.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.asspectRatio = 1.02,
    required this.product, required this.press,
  });

  final double width, asspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(children: [
            AspectRatio(
              aspectRatio: asspectRatio,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: const TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${product.price}",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(18)),
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenWidth(28),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? primaryColor.withOpacity(0.15)
                          : secondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4)),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
