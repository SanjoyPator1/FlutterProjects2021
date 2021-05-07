import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      LocationPermission permission = await Geolocator.checkPermission();
     
      print(permission);

      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
      
    } catch (e) {
      print(e);
    }
  }
}
