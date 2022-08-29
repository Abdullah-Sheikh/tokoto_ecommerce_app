import 'package:flutter/material.dart';
import 'package:tokoto/screens/forget_password/forget_password_screen.dart';
import 'package:tokoto/screens/signin/signin_screen.dart';

import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
};
