import 'package:flutter/material.dart';

class RoundBtn extends StatelessWidget {
  final Color color;
  final Function() onPressed;
  final String btnTitle;

  RoundBtn(
      {required this.color, required this.onPressed, required this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnTitle,
          ),
        ),
      ),
    );
  }
}
