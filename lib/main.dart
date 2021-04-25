import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_Button.dart';
import 'icons.dart';
import 'resuable_cards.dart';

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
                      child: resuable_cards(
                        Colour: Color(0xFF1D1F33),
                        widget: icons_settting_widget(
                            fontAwesomeIconsSetter: FontAwesomeIcons.male,
                            label: "Female"),
                      ),
                    ),
                    Expanded(
                      child: resuable_cards(
                        Colour: Color(0xFF1D1F33),
                        widget: icons_settting_widget(
                            fontAwesomeIconsSetter: FontAwesomeIcons.female,
                            label: "Female"),
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
                      Colour: Color(0xFF1D1F33),
                    ),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: resuable_cards(
                      Colour: Color(0xFF1D1F33),
                    ),
                  ),
                  Expanded(
                    child: resuable_cards(
                      Colour: Color(0xFF1D1F33),
                    ),
                  )
                ],
              )),
              bottom_button()
            ],
          ),
        )),
  ));
}
