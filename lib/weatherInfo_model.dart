/*
{
     
     "weather": [
       {
         "description": "light intensity drizzle",
         "icon": "09d"
       }
     ],
     "main": {
       "temp": 280.32,
       "pressure": 1012,
       "humidity": 81,
       "temp_min": 279.15,
       "temp_max": 281.15
     },
    
     "id": 2643743,
     "name": "London",
     "cod": 200
     }
     */

class WeatherInfo {
  final String? description;
  final String? icon;
  WeatherInfo({this.description, this.icon});

  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    final description = json['description'];
    final icon = json['icon'];
    return WeatherInfo(description: description, icon: icon);
  }
}

class TemperatureInfo {
  final double? temperature;
  TemperatureInfo({this.temperature});

  factory TemperatureInfo.fromJson(Map<String, dynamic> json) {
    final temperature = json['temp'].toDouble();
    return TemperatureInfo(temperature: temperature);
  }
}

/*class PressureInfo {
  final double? pressure;
  PressureInfo({this.pressure});

  factory PressureInfo.fromJson(Map<String, dynamic> json) {
    final temperature = json['pressure'].toDouble();
    return PressureInfo(pressure: temperature);
  }
  String PressureInfoGetter() {
    return pressure.toString();
  }
}

class HumidityInfo {
  final double? humidity;
  HumidityInfo({this.humidity});

  factory HumidityInfo.fromJson(Map<String, dynamic> json) {
    final humidity = json['humidity'].toDouble();
    return HumidityInfo(humidity: humidity);
  }
}

String HumidityInfoGetter() {
  var humidity;
  return humidity.toString();
}
*/
class WeatherResponse {
  final String? cityName;
  final TemperatureInfo? tempInfo;
  //final PressureInfo? pressureInfo;
  //final HumidityInfo? humidityInfo;
  final WeatherInfo? weatherInfo;
  final String? iconUrl;

  WeatherResponse({
    this.cityName,
    this.tempInfo,
    this.weatherInfo,
    this.iconUrl,
    //this.humidityInfo,
    //  this.pressureInfo
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final tempInfoJson = json['main'];
    final weatherInfoJson = json['weather'][0];
    final weatherInfo = WeatherInfo.fromJson(weatherInfoJson);
    final tempInfo = TemperatureInfo.fromJson(tempInfoJson);
    // final PressureInfo =PressureInfo.fromJson(json);
    // final humidityInfo = HumidityInfo.fromJson(json);
    final iconUrl =
        'http://openweathermap.org/img/wn/${weatherInfo.icon}@2x.png';
    return WeatherResponse(
      cityName: cityName,
      tempInfo: tempInfo,
      weatherInfo: weatherInfo,
      //  pressureInfo: pressureInfo,
      // humidityInfo: humidityInfo,
      iconUrl: iconUrl,
    );
  }
}
