import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    super.key,
    required this.iconData,
    required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenWidth(30),
        width: getProportionateScreenWidth(30),
        child: IconButton(
          onPressed: press,
          icon: Icon(
            iconData,
          ),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero, // Loại bỏ padding mặc định
          ),
        ));
  }
}