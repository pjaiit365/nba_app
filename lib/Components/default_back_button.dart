import 'package:flutter/material.dart';

class DefaultBackButton extends StatelessWidget {
  final Color buttonColor;
  const DefaultBackButton({required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
      color: buttonColor,
      splashColor: Colors.white,
      padding: EdgeInsets.only(left: 10),
      highlightColor: Colors.white,
    );
  }
}
