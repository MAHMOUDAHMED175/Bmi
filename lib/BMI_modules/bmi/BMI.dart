import 'dart:math';

import 'package:bmi/BMI_modules/bmi/l.dart';
import 'package:bmi/BMI_modules/bmi_result/resultBMI.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class BMI extends StatefulWidget {

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
   var dateController=TextEditingController();
   var formKey=GlobalKey<FormState>();
  double valueOfSlider=40;
  bool isLight=true;
  double isKg=20.0;
  double isCm=60.0;
  bool isMale=true;
  IconData mode=Icons.sunny;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        backgroundColor:Colors.grey ,
        elevation: 0.0,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold
          ),
        ),
        titleSpacing: 20.0,
        actions: [
          // Container(
          //   height: 60,
          //   width: 60,
          //   child: WheelChooser.integer(
          //     listHeight: 20.0,
          //     listWidth: 50.0,
          //     itemSize: 2,
          //     isInfinite: false,
          //     onValueChanged: (s) => print(s.toString()),
          //     maxValue: 5,
          //     minValue: 1,
          //     initValue: 3,
          //     horizontal: true,
          //     unSelectTextStyle: TextStyle(color: Colors.grey),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isLight=true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          width: 30,
                          decoration: BoxDecoration(
                            color: isLight?Colors.blue[300]:Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),

                          child: Icon(
                            Icons.sunny,
                              color:Colors.black,),
                          ),
                        ),
                      ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isLight=false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: isLight?Colors.white:Colors.blue,
                            borderRadius: BorderRadius.circular(50.0),
                          ),

                          child: Icon(
                            Icons.brightness_3,
                              color:Colors.black,
                          ),
                        ),
                      ),
                    ),
          ],
                ),
              ),
            ),
          ),


        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Gender & Age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 80.0,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isMale=true;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: isMale?Colors.blue[300]:Colors.white,
                                        borderRadius: BorderRadius.circular(50.0),
                                      ),

                                      child: Icon(
                                        Icons.male,
                                        color:Colors.black,),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      isMale=false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      width: 30.0,
                                      decoration: BoxDecoration(
                                        color: isMale?Colors.white:Colors.blue,
                                        borderRadius: BorderRadius.circular(50.0),
                                      ),

                                      child: Icon(
                                        Icons.female,
                                        color:Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Slider(
                        max: 110.0,
                        min: 10.0,
                        activeColor: Colors.blue,
                        value: valueOfSlider,
                        onChanged: (value) {
                          setState(() {
                            valueOfSlider= value;
                          });
                        },
                      ),
                      Expanded(
                          child: Text(
                            '${valueOfSlider.round()}',
                      style: TextStyle(
                        fontSize: 14
                      ),)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 55.0,
                ),
                Row(
                  children: [

                    Expanded(
                      child: Column(
                        children: [
                          Text('Weight',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          Container(
                            height: 180.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Text(
                                      'kg',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0
                                      ),),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 40.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[400],
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    '${isKg.round()}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0
                                    ),),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: (){
                                        setState(() {
                                          isKg--;
                                        });
                                      },
                                      icon: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),

                                    IconButton(
                                      onPressed: (){
                                        setState(() {
                                          isKg++;
                                        });
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Height',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          Container(
                            height: 180.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Text(
                                      'cm',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0
                                      ),),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 40.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[400],
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    '${isCm.round()}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0
                                    ),),
                                ),

                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: (){
                                        setState(() {
                                          isCm--;
                                        });
                                      },
                                      icon: Icon(Icons.remove),
                                    ),

                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    IconButton(
                                      onPressed: (){
                                        setState(() {
                                          isCm++;
                                        });
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: TextFormField(
                      controller: dateController,
                      validator: (String? value){
                       if(value!.isEmpty){
                         return 'type the date';
                       }
                      },
                      cursorColor: Colors.black,
                      onFieldSubmitted: (String? value){
                        if(formKey.currentState!.validate()){
                          null;
                        }
                      },
                      onTap: (){
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.parse("2230-12-12"),

                        ).then((value) {
                          dateController.text=DateFormat.yMMMMEEEEd().format(value!);
                        }).catchError((onError){
                          print(onError.toString());
                        });
                      },
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.date_range_outlined),
                        labelText: 'date',
                        hintText: 'History of calculation',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65.0,
                ),
                Container(
                  height: 52.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    onPressed: (){
                      double Result = isKg / pow(isCm / 100, 2);

                      Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context)=>ll(result: Result,)));
                    },
                      child: Text(
                        'Calculate=>=>',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 27.0
                        ),
                      ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
