import 'package:flutter/material.dart';
import 'package:tokoto/screens/forget_password/components/body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key key}) : super(key: key);

  static String routeName = "/forget_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password',
          style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 18),
        ),
      ),
      body: Body(),
    );
  }
}
