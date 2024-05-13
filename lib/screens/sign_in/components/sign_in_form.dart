import 'package:books/components/custom_surffix_icon.dart';
import 'package:books/components/default_button.dart';
import 'package:books/components/form_error.dart';
import 'package:books/constants.dart';
import 'package:books/screens/login_success/login_success_screen.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailInput(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordInput(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              children: [
                Checkbox(
                    value: remember,
                    activeColor: primaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    }),
                Text("Remember me"),
                Spacer(),
                Text(
                  "Forgot Password?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            defaultButton(
              text: "Sign In",
              press: () {
                print(_formKey.currentState!.validate());
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            ),
          ],
        ));
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(passNullError)) {
          setState(() {
            errors.add(passNullError);
          });
          return null;
        } else if (value.length < 8 && !errors.contains(shortPassError)) {
          setState(() {
            errors.add(shortPassError);
          });
          return null;
        }
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(passNullError)) {
          setState(() {
            errors.remove(passNullError);
          });
          return null;
        } else if (value.length >= 8 && errors.contains(shortPassError)) {
          setState(() {
            errors.remove(shortPassError);
          });
          return null;
        }
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emailNullError)) {
          setState(() {
            errors.remove(emailNullError);
          });
          return null;
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(invalidEmailError)) {
          setState(() {
            errors.remove(invalidEmailError);
          });
          return null;
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(emailNullError)) {
          setState(() {
            errors.add(emailNullError);
          });
          return null;
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(invalidEmailError)) {
          setState(() {
            errors.add(invalidEmailError);
          });
          return null;
        }
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }
}
