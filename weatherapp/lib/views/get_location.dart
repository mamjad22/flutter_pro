
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class GetLocation {

  void getCurrentLocation2() {
    Position currentPosition;
    Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: true)
        .then((Position position) {
      currentPosition = position;
      print(currentPosition);
      //getCurrentLocationAddress();
    }).catchError((e) {
      print(e);
    });
  }
}