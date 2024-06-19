import 'package:books/screens/cart/cart_screen.dart';
import 'package:books/screens/complete_profile/complete_profile_screen.dart';
import 'package:books/screens/home/home_screen.dart';
import 'package:books/screens/login_success/login_success_screen.dart';
import 'package:books/screens/product_detail/product_detail_screen.dart';
import 'package:books/screens/sign_in/sign_in_screen.dart';
import 'package:books/screens/sign_up/sign_up_screen.dart';
import 'package:books/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
};