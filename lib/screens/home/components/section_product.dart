import 'package:books/components/product_card.dart';
import 'package:books/components/section_title.dart';
import 'package:books/models/products.dart';
import 'package:books/screens/product_detail/product_detail_screen.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Products", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                      context, ProductDetailScreen.routeName,
                      arguments:
                          ProductDetailArgs(product: demoProducts[index])),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}
