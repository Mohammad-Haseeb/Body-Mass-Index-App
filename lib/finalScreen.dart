import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        primaryColor: Color(0xFF0A0D22),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Result"),),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                color: Color(0xFF1D1F33),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text("Estimated BMI",style: TextStyle(
                        fontSize: 40.0
                      ),)),
                      Text("40.0",textAlign: TextAlign.center,style: TextStyle(
                        fontSize: 30.0
                      ),)
                    ],
                  ),
                ),

              ),

            ),
            Expanded(
                flex: 1,
                child: Container(
                    color: Colors.blueAccent,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },

                        child: Text("GO back",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0

                        ),),
                      ),
            ))

          ],
        )
      ),
      ),
    );
  }
}
