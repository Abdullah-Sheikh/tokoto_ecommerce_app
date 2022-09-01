import 'package:flutter/material.dart';
import 'package:tokoto/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const kAnimationDuration = Duration(milliseconds: 200);
const kEmailNullError = "Please enter your Email";
const kInvalidEmail = "Please enter valid email";
const kPassNullError = "Please enter your password";
const kShortPassError = 'Password is too short';
const kMatchPassError = "Password don't match";

const kConfirmPassNullError = "Please re-enter your password";
