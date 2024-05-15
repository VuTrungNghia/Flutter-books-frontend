import 'package:books/constants.dart';
import 'package:books/models/cart.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          )),
      SizedBox(
        width: getProportionateScreenWidth(20),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(cart.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2),
          const SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: primaryColor),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItems}",
                    style: TextStyle(
                      color: textColor,
                      
                    )
                  )
                ]),
          ),
        ],
      )
    ]);
  }
}