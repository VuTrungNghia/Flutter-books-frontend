import 'package:books/components/custom_surffix_icon.dart';
import 'package:books/components/default_button.dart';
import 'package:books/components/form_error.dart';
import 'package:books/constants.dart';
import 'package:books/size_config.dart';
import 'package:flutter/material.dart';

class CompoleteProfileForm extends StatefulWidget {
  const CompoleteProfileForm({super.key});

  @override
  State<CompoleteProfileForm> createState() => _CompoleteProfileFormState();
}

class _CompoleteProfileFormState extends State<CompoleteProfileForm> {
  @override
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";

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

  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      buildInputFirstName(),
      SizedBox(height: getProportionateScreenHeight(30)),
      buildInputLastName(),
      SizedBox(height: getProportionateScreenHeight(30)),
      buildInputPhoneNumber(),
      SizedBox(height: getProportionateScreenHeight(30)),
      buildInputAddress(),
      SizedBox(height: getProportionateScreenHeight(30)),
      FormError(errors: errors),
      SizedBox(height: getProportionateScreenHeight(40)),
      defaultButton(text: "Continue", press: () {
        if (_formKey.currentState != null) {
          if (_formKey.currentState!.validate()) {
            // Navigator.pushNamed(context, HomeScreen.routeName);
          }
        }
      })
    ]));
  }

  TextFormField buildInputAddress() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(addressNullError)) {
          removeError(addressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(addressNullError)) {
          addError(addressNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Address",
          hintText: "Enter your address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon:
              CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg")),
    );
  }

  TextFormField buildInputPhoneNumber() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(phoneNumberNullError)) {
          removeError(phoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(phoneNumberNullError)) {
          addError(phoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Phone number",
          hintText: "Enter your phone name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg")),
    );
  }

  TextFormField buildInputLastName() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(lastNameNullError)) {
          removeError(lastNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(lastNameNullError)) {
          addError(lastNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "Last Name",
          hintText: "Enter your last name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

  TextFormField buildInputFirstName() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(firstNameNullError)) {
          removeError(firstNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(firstNameNullError)) {
          addError(firstNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: "First Name",
          hintText: "Enter your first name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }
}
