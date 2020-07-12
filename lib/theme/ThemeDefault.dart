import 'package:flutter/material.dart';

class ThemeDefault {
   static final ThemeData base = ThemeData();

   static TextTheme _textThemeDefault(TextTheme base) => base.copyWith(
	  headline1: TextStyle(color: Color(0xffFF958F), fontSize: 35, fontWeight: FontWeight.w400),
	  headline2: TextStyle(color: Color(0xff3A4759), fontSize: 25),
	  headline3: TextStyle(color: Color(0xffA6B1C0), fontSize: 20),
	  subtitle1: TextStyle(color: Color(0xffb4bdca), fontSize: 17),
	  subtitle2: TextStyle(fontSize: 16, color: Color(0xff424e60), fontWeight: FontWeight.normal),
   );

   static ThemeData themeDataDefault() => base.copyWith(
	  primaryColor: Colors.white,
	  accentColor: Color(0xff3A4759),
	  backgroundColor: Color(0xffF2F4F7),
	  textTheme: _textThemeDefault(base.textTheme)
   );

}

