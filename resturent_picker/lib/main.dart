import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
      'Macdoland\'s',
      'Roscoe',
      'Olive',
    'Pizza hut',
        'Panda Express','sub way','Food Panda'
];
int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
       body: Center(

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('What do you want to eat'),

             Text(restaurants[currentindex], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
               textAlign: TextAlign.center,
             ),
             Padding(padding: EdgeInsets.only(top: 50),),
             FlatButton(
               onPressed: () {
                 updateIndex();
               },
               child: Text('Pick Restaurants'),

               color: Colors.purple,
                textColor: Colors.white,
             )

           ],
          ),
       ),
    ),
    );
  }
  void updateIndex()
  {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentindex = index;
    });


  }

}

