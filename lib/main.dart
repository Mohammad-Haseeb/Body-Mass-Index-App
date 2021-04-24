import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'card.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        primaryColor: Color(0xFF0A0D22)),
    home: Scaffold(
        appBar: AppBar(
          title: Text("BMI App"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Resuable_Cards(Color(0xFF1D1F33),),
                    ),
                    Expanded(
                      child: Resuable_Cards(Color(0xFF1D1F33),),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Resuable_Cards(Color(0xFF1D1F33),),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Resuable_Cards(Color(0xFF1D1F33),),
                    ),
                    Expanded(
                      child: Resuable_Cards(Color(0xFF1D1F33),),
                    )
                  ],
                ),
              ),
               TextButton(

                child: Container(
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 0,bottom: 0,right: 0,top: 10),
                  child: Center(child: Text("Done")),
                ),
              )
            ],
          ),
        )),
  ));
}
