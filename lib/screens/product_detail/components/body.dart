import 'package:books/components/default_button.dart';
import 'package:books/components/rounded_icon_btn.dart';
import 'package:books/models/products.dart';
import 'package:books/screens/product_detail/components/product_description.dart';
import 'package:books/screens/product_detail/components/product_image.dart';
import 'package:books/screens/product_detail/components/top_rounded_container.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDesciption(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Row(children: [
                      Text("Price: ${product.price}USD"),
                      const Spacer(),
                      Row(children: [
                        RoundedIcon(iconData: Icons.remove, press: () {}),
                        SizedBox(
                          width: getProportionateScreenWidth(15),
                        ),
                        RoundedIcon(iconData: Icons.add, press: () {})
                      ])
                    ]),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                TopRoundedContainer(
                    color: Colors.white,
                    child: defaultButton(text: "Add to cart", press: () {}))
              ],
            )),
      ],
    );
  }
}
