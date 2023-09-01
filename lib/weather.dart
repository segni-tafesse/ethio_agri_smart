import 'dart:convert';

//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'weatherInfo_model.dart';

Future<WeatherResponse> getWeather(String city) async {
  final queryParameter = {
    'q': city,
    'appid': 'c60704567ca7e06c9044295363aae45f',
    'units': 'metric'
  };
  final uri =
      Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameter);

  final response = await http.get(uri);
  //print(response.body);
  final json = jsonDecode(response.body);
  //final int statuscodes = response.statusCode;
  return WeatherResponse.fromJson(json);
}
