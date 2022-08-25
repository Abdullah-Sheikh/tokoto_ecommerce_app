import 'package:flutter/material.dart';
import 'package:tokoto/screens/signin/components/body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key key}) : super(key: key);

  static String routeName = "/signin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SignIn',
          style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 18),
        ),
      ),
      body: SignInBody(),
    );
  }
}
