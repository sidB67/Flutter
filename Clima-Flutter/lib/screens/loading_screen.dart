

import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/location.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {




  @override
  void initState() {
    getlocationData();// TODO: implement initState
    super.initState();
  }

  void getlocationData()async{
    WeatherModel weatherModel = WeatherModel();
    var locationData = await weatherModel.getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: locationData);
    }));

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SpinKitDoubleBounce(
      color: Colors.white,
        size: 100.0,
    ),
    )
    );
  }

}
