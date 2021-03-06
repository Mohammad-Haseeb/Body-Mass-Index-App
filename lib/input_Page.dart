import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_Button.dart';
import 'icons.dart';
import 'resuable_cards.dart';
import 'package:flutter/painting.dart';

enum Gender{
 male,
  female
}
const unSelected_Colour=Color(0xFF1D1F33);
const select_Colour=Color(0xFF111428);
class Input_Page extends StatefulWidget {
  @override
  _Input_PageState createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {
  Gender selected_gender;

   int value=122;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          primaryColor: Color(0xFF0A0D22),
          accentColor: Colors.black45,
      ),
      
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
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              selected_gender=Gender.male;
                            });

                          },
                          child: resuable_cards(
                            Colour:selected_gender==Gender.male? select_Colour:unSelected_Colour,
                            widget: icons_settting_widget(
                                fontAwesomeIconsSetter: FontAwesomeIcons.male,
                                label: "Male"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                          setState(() {
                            selected_gender=Gender.female;

                          });

                          },
                          child: resuable_cards(
                            Colour:selected_gender==Gender.female? select_Colour:unSelected_Colour,
                            widget: icons_settting_widget(
                                fontAwesomeIconsSetter: FontAwesomeIcons.female,
                                label: "Female"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: resuable_cards(
                            Colour: unSelected_Colour,
                            widget:Column(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Text("Height"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(value.toString(),style: TextStyle(
                                      fontSize: 60.0
                                    ),),
                                    Text("cm"),


                                  ],

                                ),
                                Slider(value: value.toDouble(),
                                min: 120,
                                  max: 220,
                                  onChanged: (double newValue){
                                  setState(() {
                                    value=newValue.round();

                                  });

                                  },
                                ),
                              ],
                            ) ,


                          ),
                        )
                      ],
                    )),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: resuable_cards(
                            Colour:unSelected_Colour,
                            widget: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Weight" ,style: TextStyle(
                                    fontSize: 30.0
                                  ),),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("67",style: TextStyle(
                                      fontSize: 25.0

                                  ),),SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          accentColor: Colors.black45
                                        ),
                                        child: FloatingActionButton(onPressed: (){
                                        },
                                          child: Icon(FontAwesomeIcons.plus),

                                        ),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                            accentColor: Colors.black45
                                        ),
                                        child: FloatingActionButton(onPressed: (){                                      print("Hello");
                                        },
                                          child: Icon(FontAwesomeIcons.minus),

                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),


                          ),
                        ),
                        Expanded(
                          child: resuable_cards(
                            Colour: unSelected_Colour,
                            widget: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Age" ,style: TextStyle(
                                      fontSize: 25.0
                                  ),),
                                  SizedBox(
                                    height: 05.0,
                                  ),
                                  Text("67",style: TextStyle(
                                      fontSize: 30.0

                                  ),),SizedBox(
                                    height: 05.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                            accentColor: Colors.black45
                                        ),
                                        child: FloatingActionButton(onPressed: (){
                                        },
                                          child: Icon(FontAwesomeIcons.plus),

                                        ),
                                      ),
                                      Theme(
                                        data: ThemeData(
                                            accentColor: Colors.black45
                                        ),
                                        child: FloatingActionButton(onPressed: (){                                      print("Hello");
                                        },
                                          child: Icon(FontAwesomeIcons.minus),

                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                bottom_button()
              ],
            ),
          )),
    );
  }
}
