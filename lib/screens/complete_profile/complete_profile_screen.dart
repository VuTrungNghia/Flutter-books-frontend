import 'package:books/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Complete Profile")),
      body: Body(),
    );
  }
}
