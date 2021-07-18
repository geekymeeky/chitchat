import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/utils/constants.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        print(user.uid);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: ChatScreenBackground,
        appBar: AppBar(
          backgroundColor: ChatScreenAppBar,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 5.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            child: TextField(
                              autofocus: false,
                              style: new TextStyle(
                                  fontSize: 23.0, color: Color(0xFFbdc6cf)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type here...',
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 15.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                  borderRadius: new BorderRadius.circular(25.7),
                                ),
                              ),
                              maxLines: 1,
                              onChanged: (value) {},
                            ),
                            width: queryData.size.width * 0.75,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(30)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                        ),
                      ),
                    ]))
          ],
        ));
  }
}
