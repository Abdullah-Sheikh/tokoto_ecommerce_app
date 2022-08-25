import 'package:flutter/material.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/constants.dart';
import 'package:tokoto/screens/signin/signin_screen.dart';
import 'package:tokoto/size_config.dart';

import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> SplashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: SplashData.length,
                itemBuilder: (context, index) => SplashContent(
                    text: SplashData[index]["text"],
                    name: SplashData[index]["image"]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      children: List.generate(SplashData.length,
                          (index) => buildContainer(index: index)),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    defaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SigninScreen.routeName);
                      },
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }

  AnimatedContainer buildContainer({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: currentPage == index ? kPrimaryColor : Color(0XFFD8D8D8),
      ),
    );
  }
}
