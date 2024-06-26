import 'package:books/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error = "demo"}) {
    return Row(children: [
        SvgPicture.asset("assets/icons/Error.svg",height: getProportionateScreenHeight(14), width: getProportionateScreenWidth(14),),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],);
  }
}
