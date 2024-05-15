import 'package:books/screens/cart/cart_screen.dart';
import 'package:books/screens/home/home_screen.dart';
import 'package:books/screens/login_success/login_success_screen.dart';
import 'package:books/screens/product_detail/product_detail_screen.dart';
import 'package:books/screens/sign_in/sign_in_screen.dart';
import 'package:books/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};