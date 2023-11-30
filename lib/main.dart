import 'package:calculadora_web/src/calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 38, 38, 41)),
    home:  CalcPage(),
    ),
   
  );
}
