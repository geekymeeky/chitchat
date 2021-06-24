import 'package:flutter/material.dart';
import 'package:chitchat/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Image(
                            image: kLogo,
                            height: 85,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 55.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    hintText: 'Username or Email',
                  ),
                  maxLines: 1,
                  onChanged: (value) {},
                ),
                width: queryData.size.width * 0.7,
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    hintText: 'Password',
                  ),
                  maxLines: 1,
                  onChanged: (value) {},
                ),
                width: queryData.size.width * 0.7,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'login_screen');
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
