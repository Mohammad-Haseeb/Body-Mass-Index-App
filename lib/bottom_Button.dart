import 'package:flutter/material.dart';
class bottom_button extends StatelessWidget {
  const bottom_button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            "Done"
        ),
      ),
      color: Colors.red,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
    );
  }
}

