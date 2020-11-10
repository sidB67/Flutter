import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:clima/location.dart';

const apiKey= '0bbd22ffc8b558eb50f35cd7e95afedb';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double lat;
  double lon;

  @override
  void initState() {
    getlocation();// TODO: implement initState
    super.initState();
  }

  void getlocation()async{
    Location location= Location();
    await location.getCurrentLocation();
    lat=location.latitude;
    lon=location.longitude;
    getData();
    }
    
    void getData()async{
    http.Response response = await http.get('https//api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey');
    print(response.body);
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {

            getlocation();//Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

}
