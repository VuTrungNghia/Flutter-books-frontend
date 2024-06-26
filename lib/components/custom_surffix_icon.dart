import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    super.key,
    required this.svgIcon,
  });
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20,
          20, 20),
      child: SvgPicture.asset(
       svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
