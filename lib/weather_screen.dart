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
      body: SingleChildScrollView(
        child: Center(
          child: activeConnection!
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    wrong
                        ? const Text('something went wrong')
                        : searching
                            ? const SpinKitSpinningCircle(
                                color: Colors.blueAccent,
                                size: 100.0,
                              )
                            : Column(
                                children: [
                                  iconUrl != ''
                                      ? Image.network(iconUrl)
                                      : const SizedBox(
                                          height: 100.0,
                                          width: 100.0,
                                        ),
                                  Text(sityName),
                                  Text(
                                    '${temperature.toString()}°',
                                    style: const TextStyle(fontSize: 40),
                                  ),
                                  Text(description)
                                ],
                              ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: SizedBox(
                        width: 150,
                        child: TextField(
                          onSubmitted: (String value) {
                            _search();
                          },
                          controller: _cityTextController,
                          decoration: const InputDecoration(labelText: 'City'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    ElevatedButton(onPressed: _search, child: Text('Search')),
                    temperature != 0
                        ? Column(
                            children: [
                              Text(
                                "Current weather is suitable for using FERTILIZERS for: ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature > 10 && temperature < 15
                                  ? Text(
                                      ' -Apple \n -Barley \n -EarthPea \n -Carrot \n -Maize \n -Cabbage \n -Maize \n-Millet, \n -Potato \n -Rose \n -Sorghum \n -Tomato \n -Wheat \n -Garlic \n -Beans\n')
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Text(
                                      ' -Avocado\n -Barley \n -Cabbage \n -Carrot\n -Earthpea \n -Grape \n -Lemon \n-Mandarin \n -Millet \n -Onion \n -Orange \n -Rose \n -Sunflower \n -Sorghum \n -Tea\n -Tomato \n -Wheat \n -Yam \n')
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Text(
                                      ' -Banana \n -Avocado \n -Carrot \n -Dates \n -Earthpea \n -Grape \n -Lemon \n-Mandarin \n -Millet \n -Onion \n -Orange \n -Oil Palm \n -Rose \n -Rice \n -Sunflower \n -Sorghum \n -Coconut\n -Tomato \n -Peanut \n -Teff \n -Coffee\n')
                                  : Text(''),
                              temperature >= 30
                                  ? Text(
                                      '  -Dates  \n -Millet \n -Tomato \n -Rose \n -Yam \n -Coconut')
                                  : Text(''),
                              Text(
                                "Current weather is suitable for using PESTICIDES for: ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature >= 10 && temperature < 15
                                  ? Text(
                                      '  -Banana \n -Cabbage \n -Carrot \n -Dates \n -EarthPea \n -Wheat \n ')
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Text(
                                      '  -Apple \n -Avocado \n -Banana \n -Barley \n -Cabbage \n -Carrot \n -EarthPea \n -Lemon \n -Maize \n -Mandarin \n -Mango \n -Mango \n -Onion \n -Orange \n -Rose \n -Sunflower \n -sorghum \n -Tea \n -Tomato \n -Wheat \n -Garlic \n-Wheat \n -Beans \n')
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Text(
                                      '  -Apple \n -Avocado \n -Banana \n -Barley \n -Carrot \n-Dates \n -EarthPea \n -Grapes \n-Lemon \n-Maize \n -Mandarin \n-Mango \n-Millet \n-Oil Palm \n-Onion \n-Orange \n-Rice \n-Rose \n-SunFlower \n-Sorghum \n-Tea \n-Tomato \n-Wheat \n-Yam \n-Peanut \n -Garlic \n-Coconut \n-Teff \n-Coffee \n-Beans  \n')
                                  : Text(''),
                              temperature >= 30
                                  ? Text(
                                      '  -Banana \n -Cabbage \n-Carrot \n-Dates \n-Coconut \n  ')
                                  : Text(''),
                              Text(
                                "Current weather is suitable for using HERBICIDES for: ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature >= 10 && temperature < 15
                                  ? Text(
                                      '  -Avocado \n-Banana \n-Cabbage \n-Carrot \n-Dates \n-Potato \n-Wheat  \n ')
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Text(
                                      '  -Apple \n -Avocado \n -Banana \n -Barley \n -Cabbage \n -Carrot \n -Dates \n-Earth Pea\n -Lemon \n -Mandarin \n-Millet  \n -Onion \n -Orange \n -Rose \n -Sunflower\n -Tea \n -Tomato \n -Wheat \n -Garlic  \n -Beans \n')
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Text(
                                      '  -Apple \n -Avocado \n -Banana \n -Barley \n -Carrot \n-Cabbage \n-Dates \n -EarthPea \n -Grapes \n-Lemon \n-Maize \n -Mandarin \n-Mango \n-Millet \n-Oil Palm \n-Onion \n-Orange \n-Rice \n-Rose \n-SunFlower \n-Sorghum \n-Tea \n-Tomato \n-Wheat \n-Yam \n-Peanut \n -Garlic \n-Coconut \n-Teff \n-Coffee \n-Beans  \n')
                                  : Text(''),
                              temperature >= 30
                                  ? Text('  -Coconut \n  ')
                                  : Text(''),
                              Text(
                                "Current weather is suitable for SOWING : ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature >= 10 && temperature < 15
                                  ? Text(
                                      '  -Barley \n-Cabbage \n-Carrot \n -Earth Pea \n-Grapes \n-Maize \n-Onion \n-Potato \n-Sunflower \n-Garlic \n-Wheat  \n ')
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Text(
                                      '  -Apple \n -Barley \n -Cabbage \n -Carrot\n-Earth Pea\n -Mandarin \n-Millet  \n -Onion \n -Potato \n -Rice \n -Sunflower\n -Garlic \n -Teff \n -Wheat   \n -Beans \n')
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Text(
                                      '   -Avocado \n -Banana  \n -Carrot \n-Cabbage  \n -EarthPea \n-Lemon \n -Mandarin \n-Mango \n-Millet \n-Oil Palm \n-Onion \n-Orange \n-Potato \n-Rose \n-SunFlower \n-Sorghum \n-Tea \n-Tomato  \n-Yam \n-Peanut  \n-Coconut \n-Teff \n-Coffee \n-Beans  \n')
                                  : Text(''),
                              temperature >= 30
                                  ? Text(
                                      '  -Dates \n -OilPalm \n-Yam \n-Coconut  ')
                                  : Text(''),
                              Text(
                                "Current weather is suitable for PLOTTING LAND FOR : ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature >= 10 && temperature < 15
                                  ? Text(
                                      '  -Apple \n-Banana \n-Barley \n-Cabbage \n-Dates \n -Earth Pea \n-Grapes \n-Mandarin\n-Millet \n-Onion \n-Potato \n-Sunflower \n-Garlic  \n-Tomato \n-Wheat \n-Teff  \n ')
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Text(
                                      '  -Banana \n -Barley \n -Dates \n -Carrot\n-Earth Pea\n -Lemon \n-Maize \n-Mandarin \n-Millet  \n -Orange \n -Potato \n -Rose \n -Sunflower\n -Sorghum \n -Tea \n -Wheat   \n -Peanut \n-Teff \n-Garlic \n-Beans \n')
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Text(
                                      '   -Avocado \n -Barley  \n -Carrot \n- Maize  \n -EarthPea \n-Lemon \n -Mandarin \n-Mango \n-Millet \n-Oil Palm \n-Orange \n-Rice  \n-Sorghum \n-Tea   \n-Yam \n-Peanut  \n-Coconut \n-Teff \n-Coffee \n-Beans  \n')
                                  : Text(''),
                              temperature >= 30
                                  ? Text(
                                      '  -Dates \n -Barley\n-EarthPea\n-OilPalm\n-Millet\n-Sorghum\n-Peanut \n-Beans  \n-Coconut  ')
                                  : Text(''),
                              const SizedBox(
                                height: 400,
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('no internet'),
                    ElevatedButton(
                      onPressed: CheckUserConnection,
                      child: const Text('try again'),
                    )
                  ],
                ),
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