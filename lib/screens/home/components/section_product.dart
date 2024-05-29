import 'package:books/call_api/product_api.dart';
import 'package:books/components/product_card.dart';
import 'package:books/components/section_title.dart';
import 'package:books/models/products.dart';
import 'package:books/screens/product_detail/product_detail_screen.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
   List<Product> list = <Product>[];

  @override
  void initState() {
    // TODO: implement initState
    getProducts();
    super.initState();
  }

  getProducts(){
    ProductCallApi.getProducts().then((value){
        list = value;
        print(value);
    });
  }

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
                list.length,
                (index) => ProductCard(
                  product: list[index],
                  press: () => Navigator.pushNamed(
                      context, ProductDetailScreen.routeName,
                      arguments:
                          ProductDetailArgs(product: list[index])),
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