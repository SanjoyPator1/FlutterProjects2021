import 'dart:convert';

import 'package:clima/services/locatiion.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

const apiKey = 'f58ced27a75bfba3950473317e7fcce2';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

double? _lat;
double? _long;

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    print("initstate called");
    getLocationData();
  }

  void getLocationData() async {
    setState(() {
      isLoading = true; //data is loading
    });

    //geting the loacation from our device
    Location location = Location();
    await location.getCurrentLocation();

    _lat = location.latitude;
    _long = location.longitude;

    //using our device location to get the weather data
    var url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$_lat&lon=$_long&appid=$apiKey&units=metric';

    NetworkHelper networkhelper = NetworkHelper(url);
    var weatherData = await networkhelper.getData();
    //variables

    double temparature = weatherData['main']['temp'];
    int condition = weatherData['weather'][0]['id'];
    String name = weatherData['name'];

    print("from JSON $condition , $temparature, $name");

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeatherData: weatherData,
      );
    }));

    setState(() {
      isLoading = false; //data is loaded
    });
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate state called");
  }

  @override
  Widget build(BuildContext context) {
    print("build Called");
    return Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      )),
    );
  }
}
