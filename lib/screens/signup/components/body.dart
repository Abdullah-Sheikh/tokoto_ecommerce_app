import 'package:flutter/material.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/form_error.dart';
import 'package:tokoto/components/social_card.dart';
import 'package:tokoto/components/svg_suffix_icon.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/login_success/login_success_screen.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              SignupForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By continuing, you confirm that you agree with our terms and conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          emailTextFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          passwordTextFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          confirmPasswordTextFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          defaultButton(
              text: "SignUp",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccess.routeName);
                }
              })
        ],
      ),
    );
    ;
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmail)) {
          setState(() {
            errors.remove(kInvalidEmail);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmail)) {
          setState(() {
            errors.add(kInvalidEmail);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
      ),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length > 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
      ),
    );
  }

  TextFormField confirmPasswordTextFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kConfirmPassNullError)) {
          setState(() {
            errors.remove(kConfirmPassNullError);
          });
        } else if (confirmPassword == password &&
            errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kConfirmPassNullError)) {
          setState(() {
            errors.add(kConfirmPassNullError);
          });
          return "";
        } else if (password == confirmPassword &&
            !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: "Re-enter your password",
        labelText: "Confirm Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
      ),
    );
  }
}
