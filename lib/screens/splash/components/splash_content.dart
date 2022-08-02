import 'package:flutter/material.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.name,
  }) : super(key: key);

  final String text, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: getProportionateScreenHeight(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          name,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
