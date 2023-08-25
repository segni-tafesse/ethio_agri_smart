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

class WeatherResponse {
  final String? cityName;
  final TemperatureInfo? tempInfo;
  final WeatherInfo? weatherInfo;
  final String? iconUrl;

  WeatherResponse(
      {this.cityName, this.tempInfo, this.weatherInfo, this.iconUrl});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final tempInfoJson = json['main'];
    final weatherInfoJson = json['weather'][0];
    final weatherInfo = WeatherInfo.fromJson(weatherInfoJson);
    final tempInfo = TemperatureInfo.fromJson(tempInfoJson);
    final iconUrl =
        'http://openweathermap.org/img/wn/${weatherInfo.icon}@2x.png';
    return WeatherResponse(
        cityName: cityName,
        tempInfo: tempInfo,
        weatherInfo: weatherInfo,
        iconUrl: iconUrl);
  }
}
