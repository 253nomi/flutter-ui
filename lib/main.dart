import 'package:flutter/material.dart';
import 'package:flutter_hassam_ui/HomeScreen.dart';
import 'package:flutter_hassam_ui/cart.dart';
import 'package:flutter_hassam_ui/wMPatientList.dart';
import 'package:flutter_hassam_ui/wortyMileMain.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PatientList(),
    );
  }
}

