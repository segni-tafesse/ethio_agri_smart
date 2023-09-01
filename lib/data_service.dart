import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weatherInfo_model.dart';

class DataService {
  //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
  Future<WeatherResponse> getWeather(String city) async {
    final queryParameter = {
      'q': city,
      'appid': '708143124b5343f8413dad32d2ee78b0',
      'units': 'metric'
    };
    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameter);

    final response = await http.get(uri);
    //print(response.body);
    final json = jsonDecode(response.body);
    //final int statuscodes = response.statusCode;
    return WeatherResponse.fromJson(json);
  }

  Future statuscodes(String city) async {
    final queryParameter = {
      'q': city,
      'appid': '708143124b5343f8413dad32d2ee78b0',
      'units': 'metric'
    };
    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameter);

    final response = await http.get(uri);
    //print(response.body);

    final int statuscodes = response.statusCode;
    return statuscodes;
  }
}
