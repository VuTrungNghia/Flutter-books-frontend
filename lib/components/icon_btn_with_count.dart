import 'package:books/constants.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCount extends StatelessWidget {
  const IconBtnWithCount({
    super.key,
    required this.svg,
    this.numberOfItems = 0,
    required this.press,
  });

  final String svg;
  final int numberOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svg),
          ),
          if (numberOfItems != 0)
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                  child: Text(
                "$numberOfItems",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    height: 1,
                    fontWeight: FontWeight.w600),
              )),
            ),
          )
        ],
      ),
    );
  }
}
