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
        Expanded(
          flex: 1,
          child: Icon(fontAwesomeIconsSetter,
            size: 40,),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          flex: 1,
          child: Text(

            label,style: TextStyle(
              fontSize: 20.0
          ),),
        ),


      ],
    );
  }
}
