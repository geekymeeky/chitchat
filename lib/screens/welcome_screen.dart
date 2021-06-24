import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/utils/constants.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                          height: 90,
                        ),
                      ),
                    ),
                    Container(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 60.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Chitchat',
                                speed: const Duration(milliseconds: 100),
                              ),
                            ],
                            totalRepeatCount: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login_screen');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 1.0,
                    minimumSize: Size(queryData.size.width * 0.6,
                        queryData.size.height * 0.06)),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'registration_screen');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 1.0,
                    minimumSize: Size(queryData.size.width * 0.6,
                        queryData.size.height * 0.06)),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
