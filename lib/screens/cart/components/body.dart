import 'package:books/models/cart.dart';
import 'package:books/screens/cart/components/cart_item.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
               padding:  const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ]),
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItem(
                cart: demoCarts[index],
              )),
        ),
      ),
    );
  }
}
