import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import './data_service.dart';

class WeatherInterface extends StatefulWidget {
  WeatherInterface({Key? key}) : super(key: key);
  String dropdownValue = 'one';
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
  late String pressure = '';
  late String humidity = '';
  late bool searching = false;
  late String description = '';
  late bool wrong = false;
  late bool? activeConnection = true;
  String selectedPlantType = '';

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
                                  Text(description),
                                  temperature != 0
                                      ? Text(
                                          'Additional Information',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(''),
                                  temperature != 0
                                      ? Text(
                                          'pressure:           ${pressure.toString()}1010',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      : Text(''),
                                  temperature != 0
                                      ? Text(
                                          'humidity:           ${humidity.toString()}23',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      : Text(''),
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
                              Divider(),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                "Current weather is suitable for using : ",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              temperature > 10 && temperature < 15
                                  ? Column(
                                      children: [
                                        Column(
                                          children: [
                                            Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                      'Fertilizers:                        '),
                                                  DropdownButton<String>(
                                                    value: selectedPlantType,
                                                    onChanged: (newValue) {
                                                      setState(() {});
                                                    },
                                                    items: [
                                                      'Apple                                        ',
                                                      'Barley                                       ',
                                                      'Earth pea                                    ',
                                                      'Carrot                                       ',
                                                      'Maize',
                                                      'Millet                                        ',
                                                      'Potatoes                                     ',
                                                      'Rose                                           ',
                                                      'Sorghum                                       ',
                                                      'Tomato                                        ',
                                                      'Wheat                                          ',
                                                      'Garlic                                          ',
                                                      'Beans',
                                                      ''
                                                    ].map((type) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: type,
                                                        child: Text(type),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Column(
                                      children: [
                                        Column(
                                          children: [
                                            Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                      'Fertilizers:                        '),
                                                  DropdownButton<String>(
                                                    value: selectedPlantType,
                                                    onChanged: (newValue) {
                                                      setState(() {});
                                                    },
                                                    items: [
                                                      '-Avocado                                 ',
                                                      '-Barley                                     ',
                                                      ' -Cabbage                                    ',
                                                      '-Carrot',
                                                      '-Earthpea',
                                                      '-Grape ',
                                                      '-Lemon',
                                                      '-Mandarin ',
                                                      ' -Millet ',
                                                      '-Onion',
                                                      '-Orange ',
                                                      '-Rose ',
                                                      '-Sunflower ',
                                                      '-Sorghum',
                                                      '-Tea',
                                                      ' -Tomato ',
                                                      ' -Wheat ',
                                                      ' -Yam ',
                                                      ''
                                                    ].map((type) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: type,
                                                        child: Text(type),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Column(
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              children: [
                                                Center(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          'Fertilizers:                      '),
                                                      DropdownButton<String>(
                                                        value:
                                                            selectedPlantType,
                                                        onChanged: (newValue) {
                                                          setState(() {});
                                                        },
                                                        items: [
                                                          '-Banana                                             ',
                                                          '-Avocado                                   ',
                                                          ' -Carrot                                  ',
                                                          ' -Dates ',
                                                          '-Earthpea ',
                                                          '-Grape',
                                                          '-Lemon ',
                                                          '-Mandarin ',
                                                          '-Millet ',
                                                          '-Onion ',
                                                          ' -Orange ',
                                                          ' -Oil Palm ',
                                                          ' -Rose ',
                                                          '-Rice ',
                                                          '-Sunflower ',
                                                          ' -Sorghum',
                                                          ' -Coconut',
                                                          '-Tomato ',
                                                          '-Peanut ',
                                                          '-Teff ',
                                                          '-Coffee',
                                                          ''
                                                        ].map((type) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: type,
                                                            child: Text(type),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 30
                                  ? Column(
                                      children: [
                                        Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                  'Fertilizers:                    '),
                                              DropdownButton<String>(
                                                value: selectedPlantType,
                                                onChanged: (newValue) {
                                                  setState(() {});
                                                },
                                                items: [
                                                  ' -Dates                                            ',
                                                  '-Millet                                    ',
                                                  ' -Tomato ',
                                                  '-Rose ',
                                                  '-Yam ',
                                                  '-Coconut',
                                                  ''
                                                ].map((type) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: type,
                                                    child: Text(type),
                                                  );
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 10 && temperature < 15
                                  ? Column(
                                      children: [
                                        Text(
                                            'Pesticides:                           '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Banana                                               ',
                                            ' -Cabbage                                   ',
                                            ' -Carrot ',
                                            ' -Dates ',
                                            ' -EarthPea ',
                                            '-Wheat ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Column(
                                      children: [
                                        Text(
                                            'Pesticides:                          '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                                   ',
                                            '-Avocado                                             ',
                                            '-Banana ',
                                            '-Barley ',
                                            ' -Cabbage ',
                                            ' -Carrot ',
                                            ' -EarthPea ',
                                            ' -Lemon ',
                                            ' -Maize ',
                                            '-Mandarin ',
                                            '-Mango ',
                                            '-Mango',
                                            ' -Onion ',
                                            '-Orange ',
                                            ' -Rose ',
                                            ' -Sunflower ',
                                            '-sorghum ',
                                            ' -Tea ',
                                            '-Tomato',
                                            ' -Wheat ',
                                            '-Garlic ',
                                            '-Wheat ',
                                            '-Beans ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Pesticides:                                 '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                                 ',
                                            ' -Avocado ',
                                            ' -Banana ',
                                            ' -Barley ',
                                            ' -Carrot ',
                                            '-Dates ',
                                            '-EarthPea ',
                                            '-Grapes',
                                            '-Lemon ',
                                            '-Maize ',
                                            '-Mandarin ',
                                            '-Mango ',
                                            '-Millet ',
                                            '-Oil Palm ',
                                            '-Onion ',
                                            '-Orange ',
                                            '-Rice ',
                                            '-Rose ',
                                            '-SunFlower ',
                                            '-Sorghum ',
                                            '-Tea ',
                                            '-Tomato ',
                                            '-Wheat ',
                                            '-Yam ',
                                            '-Peanut ',
                                            ' -Garlic ',
                                            '-Coconut ',
                                            '-Teff ',
                                            '-Coffee ',
                                            '-Beans  ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Pesticides:                                 '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Banana                                             ',
                                            '-Cabbage',
                                            '-Carrot ',
                                            '-Dates ',
                                            '-Coconut ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 10 && temperature < 15
                                  ? Column(
                                      children: [
                                        Text(
                                            'Herbicides:                                 '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Avocado                                           ',
                                            '-Banana ',
                                            '-Cabbage ',
                                            '-Carrot ',
                                            '-Dates ',
                                            '-Potato ',
                                            '-Wheat  ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Column(
                                      children: [
                                        Text(
                                            'Herbicides:                                 '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                     ',
                                            ' -Avocado ',
                                            ' -Banana ',
                                            ' -Barley ',
                                            '-Cabbage ',
                                            ' -Carrot ',
                                            '-Dates ',
                                            '-Earth Pea',
                                            '-Lemon ',
                                            ' -Mandarin ',
                                            '-Millet ',
                                            ' -Onion',
                                            ' -Orange ',
                                            '-Rose ',
                                            ' -Sunflowe',
                                            ' -Tea ',
                                            ' -Tomato ',
                                            '-Wheat ',
                                            ' -Garlic  ',
                                            ' -Beans ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Herbicides:                               '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                          ',
                                            ' -Avocado ',
                                            ' -Banana ',
                                            ' -Barley ',
                                            ' -Carrot',
                                            '-Cabbage',
                                            '-Dates ',
                                            ' -EarthPea ',
                                            ' -Grapes ' '-Lemon ',
                                            '-Maize ',
                                            ' -Mandarin ',
                                            '-Mango ',
                                            '-Millet ',
                                            '-Oil Palm ',
                                            '-Onion ',
                                            '-Orange ',
                                            '-Rice ',
                                            '-Rose ',
                                            '-SunFlower ',
                                            '-Sorghum ',
                                            '-Tea ',
                                            '-Tomato ',
                                            '-Wheat ',
                                            '-Yam ',
                                            '-Peanut ',
                                            '-Garlic ',
                                            '-Coconut ',
                                            '-Teff ',
                                            '-Coffee ',
                                            '-Beans ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Herbicides:                                    '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Coconut                                         ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 10 && temperature < 15
                                  ? Column(
                                      children: [
                                        Text('Sowing:'),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Barley                                                  ',
                                            '-Cabbage ',
                                            '-Carrot ',
                                            ' -Earth Pea ',
                                            '-Grapes ',
                                            '-Maize ',
                                            '-Onion ',
                                            '-Potato ',
                                            '-Sunflower',
                                            '-Garlic',
                                            '-Wheat',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Column(
                                      children: [
                                        Text(
                                            'Sowing:                                    '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                             ',
                                            ' -Barley ',
                                            '-Cabbage ',
                                            ' -Carrot',
                                            '-Earth Pea',
                                            '-Mandarin ',
                                            '-Millet  ',
                                            ' -Onion ',
                                            ' -Potato ',
                                            ' -Rice ',
                                            ' -Sunflower',
                                            ' -Garlic ',
                                            '-Teff ',
                                            ' -Wheat   ',
                                            ' -Beans',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Sowing:                                                  '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '  -Avocado                                             ',
                                            '-Banana                                                  ',
                                            ' -Carrot ',
                                            'Cabbage  ',
                                            '-EarthPea',
                                            '-Lemon ',
                                            ' -Mandarin ',
                                            '-Mango ',
                                            '-Millet ',
                                            '-Oil Palm ',
                                            '-Onion ',
                                            '-Orange ',
                                            '-Potato ',
                                            '-Rose ',
                                            '-SunFlower ',
                                            '-Sorghum ',
                                            '-Tea ',
                                            '-Tomato ',
                                            '-Yam ',
                                            '-Peanut  ',
                                            '-Coconut ',
                                            '-Teff ',
                                            '-Coffee ',
                                            '-Beans  ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Sowing:                                          '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Dates                                                  ',
                                            ' -OilPalm ',
                                            '-Yam ',
                                            '-Coconut ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 10 && temperature < 15
                                  ? Column(
                                      children: [
                                        Text(
                                            'Plotting:                                       '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Apple                                           ',
                                            '-Banana ',
                                            '-Barley ',
                                            '-Cabbage ',
                                            '-Dates ',
                                            ' -Earth Pea ',
                                            '-Grapes ',
                                            '-Mandarin',
                                            '-Millet ',
                                            '-Onion ',
                                            '-Potato ',
                                            '-Sunflower',
                                            '-Garlic  ',
                                            '-Tomato ',
                                            '-Wheat ',
                                            '-Teff ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 15 && temperature < 20
                                  ? Column(
                                      children: [
                                        Text(
                                            'Plotting:                                              '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Banana                                                   ',
                                            ' -Barley ',
                                            ' -Dates ',
                                            '-Carrot',
                                            '-Earth Pea',
                                            ' -Lemon ',
                                            '-Maize ',
                                            '-Mandarin ',
                                            '-Millet  ',
                                            ' -Orange ',
                                            '-Potato ',
                                            ' -Rose ',
                                            ' -Sunflower',
                                            '-Sorghum ',
                                            '-Tea ',
                                            '-Wheat ',
                                            ' -Peanut ',
                                            '-Teff ',
                                            '-Garlic ',
                                            '-Beans ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 20 && temperature < 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Plotting:                                            '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            '-Avocado                                                        ',
                                            '-Barley  ',
                                            '-Carrot ',
                                            '- Maize ',
                                            ' -EarthPea ',
                                            '-Lemon ',
                                            '-Mandarin ',
                                            '-Mango ',
                                            '-Millet ',
                                            '-Oil Palm ',
                                            '-Orange ',
                                            '-Rice  ',
                                            '-Sorghum ',
                                            '-Tea   ',
                                            '-Yam ',
                                            '-Peanut  ',
                                            '-Coconut ',
                                            'Teff ',
                                            '-Coffee ',
                                            '-Beans  ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
                                  : Text(''),
                              temperature >= 30
                                  ? Column(
                                      children: [
                                        Text(
                                            'Plotting:                                     '),
                                        DropdownButton<String>(
                                          value: selectedPlantType,
                                          onChanged: (newValue) {
                                            setState(() {});
                                          },
                                          items: [
                                            ' -Dates                                         ',
                                            '-Barley',
                                            '-EarthPea',
                                            '-OilPalm',
                                            '-Millet',
                                            '-Sorghum',
                                            '-Peanut ',
                                            '-Beans  ',
                                            '-Coconut ',
                                            ''
                                          ].map((type) {
                                            return DropdownMenuItem<String>(
                                              value: type,
                                              child: Text(type),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )
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