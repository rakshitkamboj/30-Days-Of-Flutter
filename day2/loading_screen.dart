import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'location_screen.dart';
import 'location_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/location.dart';
import 'package:location_permissions/location_permissions.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState

    getLocation();
    super.initState();
  }

  void getLocation() async {
    PermissionStatus permission =
        await LocationPermissions().requestPermissions();
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LocationScreen(),
              ),
            );
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
