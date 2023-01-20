import 'package:bmi/BMI_modules/bmi/BMI.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( Bmi());
}
class Bmi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMI(),
    );
  }
}
