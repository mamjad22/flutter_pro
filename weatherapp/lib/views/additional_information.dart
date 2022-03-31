



import 'package:flutter/cupertino.dart';

Widget additionalInformation (
      String wind, String humidity, String pressure, String feels_like)
{
  return Container(
    width: double.infinity,
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
                    ),
                  SizedBox(height: 18.0,),
                  Text(
                    "Pressure ", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$wind", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 18.0,),
                  Text(
                    "$pressure ", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Humidity", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
                  ),
                   SizedBox(height: 18.0,),
                  Text(
                    "Feel like ", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$humidity", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 18.0,),
                  Text(
                    "$feels_like ", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),
                  ),
                ],
              ),


            ],
          )
        ],
      ),

  );
}