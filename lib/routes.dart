import 'package:flutter/material.dart';
import 'package:tokoto/screens/forget_password/forget_password_screen.dart';
import 'package:tokoto/screens/login_success/login_success_screen.dart';
import 'package:tokoto/screens/signin/signin_screen.dart';

import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
};
