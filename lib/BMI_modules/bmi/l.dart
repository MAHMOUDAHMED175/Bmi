import 'package:flutter/material.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class ll extends StatelessWidget {
double result;
  ll({
  required this.result,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey,
        titleSpacing: 20.0,
        title: const Text(
          'Result',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(

              'Calculating body mass',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            const SizedBox(
              height: 50.3,
            ),
            Container(
              height:60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(

                  result.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
                ),
              ),
            ),

          ],
        ),
      ),
      // child: WheelChooser.integer(
      //   isInfinite: false,
      //   onValueChanged: (s) => print(s.toString()),
      //   maxValue: 200,
      //   minValue: -200,
      //   initValue: 0,
      //   horizontal: true,
      //   unSelectTextStyle: TextStyle(color: Colors.grey),
      // ),
    );
  }
}
