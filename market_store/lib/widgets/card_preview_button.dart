import 'package:flutter/material.dart';

class CardPreviewButton extends StatelessWidget {
  final Function onButtonPressed;
  final String text;
  final Color color;
  const CardPreviewButton(
      {Key key, this.text, this.color, this.onButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
        onPressed: onButtonPressed,
        color: color,
        child: Container(
          width: 150,
          alignment: Alignment.center,
          child: Text(text),
        ),
      );
}
