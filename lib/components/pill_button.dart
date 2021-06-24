import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  PillButton({this.text, this.color, @required this.onPress, this.queryData});

  final String text;
  final Color color;
  final Function onPress;
  final MediaQueryData queryData;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        elevation: 1.0,
        minimumSize:
            Size(queryData.size.width * 0.6, queryData.size.height * 0.06),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
