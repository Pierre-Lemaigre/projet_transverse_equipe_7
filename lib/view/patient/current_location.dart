import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:projet_transverse_equipe_7/model/place.dart';
import 'package:http/http.dart'as http;
import 'dart:convert' as convert;
import 'package:projet_transverse_equipe_7/services/marker_services.dart';


class CurrentLocationScreen extends StatefulWidget {
  const CurrentLocationScreen({Key? key}) : super(key: key);

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}


class _CurrentLocationScreenState extends State<CurrentLocationScreen> {

  late GoogleMapController googleMapController;
  Set<Marker> pharmacyMarkers = new Set();

  final markerService = MarkerService();

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(48.89, 2.26),zoom: 14);

  Set<Marker> markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User current location"),
        centerTitle: true,
      ),
      body: GoogleMap(initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller){
          googleMapController = controller;
        },),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            Position position = await _determinePosition();
            googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude,position.longitude),zoom: 14)));
            markers.clear();
            markers.add(Marker(markerId: const MarkerId("currentLocation"),position: LatLng(position.latitude, position.longitude)));

            setState(() {});
          },
          label: const Text("Current Location"),
          icon: const Icon(Icons.location_history)
      ),
    );
  }

  Future<Position> _determinePosition() async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled){
      return Future.error("Location services are disabled");
    }

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied){
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever){
      return Future.error("Location permissions are permanently denied");
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  Future<List<Place>> getPharmacy (double lat, double lng) async {
    var url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&radius=1500&type=pharmacy&key=AIzaSyCdAd5UE-L0CC_53t0ZG4PQUN4FP3ZvxHA';

    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }

  TooglePlace(LatLng latLng) async {
    var places = await getPharmacy(latLng.latitude, latLng.longitude);
    pharmacyMarkers= {};
    if (places.length > 0){
      var newMarker = markerService.createMarkerFromPlace(places[0], false);
    }
  }

}
