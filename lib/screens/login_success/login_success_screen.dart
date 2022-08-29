import 'package:flutter/material.dart';
import 'package:tokoto/screens/login_success/components/body.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/loginsuccess";
  const LoginSuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Login Success',
          style: TextStyle(color: Color(0xFF8D8D8D), fontSize: 18),
        ),
      ),
      body: Body(),
    );
  }
}
