import 'package:chitchat/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
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
                          padding: const EdgeInsets.only(bottom: 60),
                          child: Image(
                            image: kLogo,
                          ),
                        ),
                        height: 100,
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 60.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Container(
                child: TextField(
                  autofocus: false,
                  decoration: kTextFieldDecor,
                  maxLines: 1,
                  onChanged: (value) {
                    email = value;
                  },
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
                  decoration: kTextFieldDecor,
                  maxLines: 1,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                width: queryData.size.width * 0.7,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                onPressed: () async {
                  try {
                    final currentuser = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (currentuser != null) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, ChatScreen.id, (route) => false);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                style: TextButton.styleFrom(
                    backgroundColor: kLoginButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    elevation: 1.0,
                    minimumSize: Size(queryData.size.width * 0.6,
                        queryData.size.height * 0.06)),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
