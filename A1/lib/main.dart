

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
 }

 class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return
        MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Center(
              child: Container(
                child: Text('Hello world',
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
                color: Colors.grey,
                width: 150,
                height: 70,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                margin: EdgeInsets.only(left: 10, top: 20),
              ),

          ),
        )

        );
  }
 }


