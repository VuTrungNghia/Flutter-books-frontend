import 'package:books/components/custom_surffix_icon.dart';
import 'package:books/components/default_button.dart';
import 'package:books/components/form_error.dart';
import 'package:books/constants.dart';
import 'package:books/screens/complete_profile/complete_profile_screen.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirm_password = "";
  final List<String> errors = [];
  void _validateForm() {
    if (_formKey.currentState != null) {
      bool isValid = _formKey.currentState!.validate();
      if (isValid) {
        Navigator.pushNamed(context, CompleteProfileScreen.routeName);
      }
    }
  }

  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          buildEmailInput(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordInput(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfirmPasswordInput(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          defaultButton(text: "Continue", press: _validateForm)
        ]));
  }

  TextFormField buildEmailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emailNullError)) {
          removeError(emailNullError);
          return null;
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(invalidEmailError)) {
          removeError(invalidEmailError);
          return null;
        }
          return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(emailNullError)) {
          addError(invalidEmailError);
          return null;
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(invalidEmailError)) {
          addError(invalidEmailError);
          return null;
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }

  TextFormField buildPasswordInput() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(passNullError)) {
          addError(passNullError);
          return null;
        } else if (value.length < 8 && !errors.contains(shortPassError)) {
          addError(shortPassError);
          return null;
        }
        password = value;
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(passNullError)) {
          removeError(passNullError);
          return;
        } else if (value.length >= 8 && errors.contains(shortPassError)) {
          removeError(shortPassError);
          return;
        }
      },
      decoration: const InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }

  TextFormField buildConfirmPasswordInput() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (value != password) {
          addError(matchPassError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (password == confirm_password) {
          removeError(matchPassError);
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }
}