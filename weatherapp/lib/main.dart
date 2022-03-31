
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/views/additional_information.dart';
import 'package:weatherapp/views/current_weather.dart';
import 'package:weatherapp/views/get_location.dart';
import 'package:weatherapp/views/weather_api.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {



  String location = '';
WeatherApi client = WeatherApi();
@override
void initState() {
  GetLocation _getLocation = GetLocation();
  //location = _getLocation.currentPosition ;
  location = "Karachi";
  super.initState();
  location = "lahore";
  client.getCurrentWeather("Lahore");
}


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Weather App",style: TextStyle (color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {}, icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded,"28.30", "$location"),
          const SizedBox(
            height: 60.0,
          ),
          const Text(
              "Additional Information",
            style: TextStyle(fontSize: 22.0,color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const SizedBox(
            height: 20.0,
          ),
          additionalInformation("24", "2", "1014", "24.3"),
        ],
      ),
    );
  }

}




