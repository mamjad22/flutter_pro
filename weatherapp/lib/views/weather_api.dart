

import 'dart:convert';

import 'package:http/http.dart'; as http;
import 'package:weatherapp/views/weather_model.dart';

class WeatherApi{
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=${location}&appid=918652a3f765c2ecaa890ef016bead90"
    );
    var responce = await http.get(endpoint);
    var body = jsonDecode(responce.body);

    print(Weather.fromJson(body));
    return Weather.fromJson(body.cityName);

  }
}

