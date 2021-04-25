import 'package:flutter/material.dart';
class icons_settting_widget extends StatelessWidget {
  final fontAwesomeIconsSetter;
  final String label;
  icons_settting_widget({this.fontAwesomeIconsSetter, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(fontAwesomeIconsSetter,
          size: 60,),
        SizedBox(
          height: 10.0,
        ),
        Text(label,style: TextStyle(
            fontSize: 30.0
        ),),


      ],
    );
  }
}
