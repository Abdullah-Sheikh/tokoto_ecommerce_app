import 'package:flutter/material.dart';
import 'package:tokoto/screens/signup/components/body.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SignUp',
          style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 18),
        ),
      ),
      body: Body(),
    );
  }
}
