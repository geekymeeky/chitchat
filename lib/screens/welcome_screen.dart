import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/utils/constants.dart';
import 'package:chitchat/components/pill_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image(
                        image: kLogo,
                        height: 100,
                      ),
                    ),
                  ),
                  Container(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Chitchat',
                          textStyle: TextStyle(
                              fontSize: 68.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ),
                ],
              ),
            ),
            PillButton(
              text: 'Login',
              color: Colors.deepPurple,
              onPress: () {
                Navigator.pushNamed(context, 'login_screen');
              },
              queryData: queryData,
            ),
            SizedBox(
              height: 15.0,
            ),
            PillButton(
              text: 'Register',
              color: Colors.orangeAccent,
              onPress: () {
                Navigator.pushNamed(context, 'registration_screen');
              },
              queryData: queryData,
            )
          ],
        ),
      ),
    );
  }
}
