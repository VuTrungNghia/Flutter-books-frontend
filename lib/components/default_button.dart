import 'package:books/constants.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class defaultButton extends StatelessWidget {
  const defaultButton({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return secondaryColor
                    .withOpacity(0.04); // Opacity for hovered state
              }
              if (states.contains(WidgetState.focused) ||
                  states.contains(WidgetState.pressed)) {
                return secondaryColor.withOpacity(
                    0.25); // Increased opacity for pressed/focused state
              }
              return null; // Defer to the widget's default.
            }),
          ),
          onPressed: press as void Function()?,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: getProportionateScreenWidth(18)),
          )),
    );
  }
}