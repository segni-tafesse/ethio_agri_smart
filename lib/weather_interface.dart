import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import './data_service.dart';

class WeatherInterface extends StatefulWidget {
  WeatherInterface({Key? key}) : super(key: key);

  @override
  State<WeatherInterface> createState() => _WeatherInterfaceState();
}

class _WeatherInterfaceState extends State<WeatherInterface> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();
  //late WeatherResponse _response;
  late String sityName = '';
  late String iconUrl = '';
  late int temperature = 0;
  late bool searching = false;
  late String description = '';
  late bool wrong = false;
  late bool? activeConnection = true;

  void initState() {
    CheckUserConnection();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: activeConnection!
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  wrong
                      ? Text('something went wrong')
                      : searching
                          ? SpinKitSpinningCircle(
                              color: Colors.blueAccent,
                              size: 100.0,
                            )
                          : Column(
                              children: [
                                iconUrl != ''
                                    ? Image.network(iconUrl)
                                    : SizedBox(
                                        height: 100.0,
                                        width: 100.0,
                                      ),
                                Text(sityName),
                                Text(
                                  '${temperature.toString()}°',
                                  style: TextStyle(fontSize: 40),
                                ),
                                Text(description)
                              ],
                            ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: SizedBox(
                      width: 150,
                      child: TextField(
                        onSubmitted: (String value) {
                          _search();
                        },
                        controller: _cityTextController,
                        decoration: InputDecoration(labelText: 'City'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: _search, child: Text('Search'))
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('no internet'),
                  ElevatedButton(
                      onPressed: CheckUserConnection, child: Text('try again'))
                ],
              ),
      ),
    );
  }

  void _search() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    await CheckUserConnection();
    if (activeConnection == true) {
      setState(() {
        wrong = false;
      });
      print('search started');
      setState(() => searching = true);
      final statuscode =
          await _dataService.statuscodes(_cityTextController.text);
      print(statuscode);

      if (statuscode == 200) {
        final response =
            await _dataService.getWeather(_cityTextController.text);
        setState(() {
          //_response = response;
          sityName = response.cityName!;
          temperature = response.tempInfo!.temperature!.toInt();
          description = response.weatherInfo!.description!;
          iconUrl = response.iconUrl!;
        });
        setState(() {
          searching = false;
          _cityTextController.clear();
        });
      } else {
        setState(() {
          wrong = true;
        });
      }
    } else if (activeConnection == false) {
      setState(() {
        activeConnection = false;
      });
    }

    // print(response.cityName);
    // print(response.weatherInfo?.description);
    // print(response.weatherInfo?.description);
    // print(response.tempInfo?.temperature?.round());
  }

  Future CheckUserConnection() async {
    activeConnection = await InternetConnectionChecker().hasConnection;
    if (activeConnection == true) {
      print('YAY! Free cute dog pics!');
      setState(() {
        activeConnection = true;
      });
    } else {
      print('No internet :( Reason:');
    }
  }
}
//"https://giphy.com/gifs/juan-gabriel-sSgvbe1m3n93G"