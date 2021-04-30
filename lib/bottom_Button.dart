import 'package:flutter/material.dart';
import 'finalScreen.dart';
class bottom_button extends StatelessWidget {
  const bottom_button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
        },
        child: Center(
          child: Text(
              "Calculate Your BMI",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0

             ),
          ),
        ),
      ),
      color: Colors.red,
      width: double.infinity,
    );
  }
}

