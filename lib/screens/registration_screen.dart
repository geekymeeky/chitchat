import 'package:chitchat/components/pill_button.dart';
import 'package:chitchat/screens/chat_screen.dart';
import 'package:chitchat/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                    'Register',
                    style: TextStyle(fontSize: 60.0, color: Colors.black87),
                  ),
                ],
              ),
            ),
            Container(
              child: TextField(
                autofocus: false,
                decoration: kTextFieldDecor.copyWith(hintText: 'Email'),
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
                decoration: kTextFieldDecor.copyWith(hintText: 'Password'),
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
            PillButton(
              onPress: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, ChatScreen.id, (route) => false);
                  }
                } catch (e) {
                  print(e);
                }
              },
              color: Colors.orangeAccent,
              text: 'Register',
              queryData: queryData,
            )
          ],
        ),
      ),
    );
  }
}
