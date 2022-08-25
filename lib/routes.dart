import 'package:flutter/material.dart';
import 'package:tokoto/screens/signin/signin_screen.dart';

import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
};
