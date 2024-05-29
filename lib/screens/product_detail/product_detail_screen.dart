import 'package:books/screens/product_detail/components/body.dart';
import 'package:books/screens/product_detail/components/custom_app_bar.dart';
import 'package:books/components/rounded_icon_btn.dart';
import 'package:books/models/products.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product_detail";
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailArgs args = ModalRoute.of(context)!.settings.arguments as ProductDetailArgs;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      //   child: CustomAppBar(rating: args.product.id,), // Your custom app bar content
      // ),
      body:SingleChildScrollView(
        child: Body(product: args.product),
      ),
    );
  }
}



class ProductDetailArgs {
  final Product product;

  ProductDetailArgs({required this.product});
}
