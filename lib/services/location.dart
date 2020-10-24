import 'package:geolocator/geolocator.dart';

//Location class uses geolocator package to get user's current location
class Location {
  double longitude;
  double latitude;

  //Future marks a function's return value to allow it to be awaited on
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
