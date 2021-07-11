import 'package:flutter/material.dart';
import 'package:flutter_ui_app/views/SubmitDesignPaid.dart';
import 'package:flutter_ui_app/views/confirmorder.dart';
import 'package:flutter_ui_app/views/forum.dart';
import 'package:flutter_ui_app/views/paidAds.dart';
import 'package:flutter_ui_app/views/submitGivenPaid.dart';


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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ConfirmOrder(),
    );
  }
}

