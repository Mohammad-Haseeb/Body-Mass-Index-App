import 'package:flutter/material.dart';
class resuable_cards extends StatelessWidget {
  final Color Colour;
  final Widget widget;
  final Text text;
  resuable_cards({@required this.Colour,this.widget,this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colour,
      ),
      margin: EdgeInsets.all(10.0),
      child: widget,
    );
  }
}
