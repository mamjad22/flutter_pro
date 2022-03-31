
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
             verticalDirection: VerticalDirection.up,
 //           crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
 //           mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.lightBlue,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                child: const Text('Hello word',
                  style:
                  TextStyle( fontSize: 36, color: Colors.red, fontWeight: FontWeight.w900 ),),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                    image: AssetImage(
                      'images/bulb.jpg',
                    ),
                    fit: BoxFit.fill,
                    ),
                    border: Border.all(color: Colors.grey,
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(150),
                  ),

                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  height: 250,
                  width: 250,
                 ),
              ),
            ],
          ),
        ),
       ),
    );
  }
}
