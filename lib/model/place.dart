import 'package:projet_transverse_equipe_7/model/geometry.dart';

class Place {
  final Geometry geometry;
  final String name;
  final String vicinity;

  Place({required this.geometry,required this.name,required this.vicinity});

  factory Place.fromJson(Map<String,dynamic> json){
    return Place(
      geometry:  Geometry.fromJson(json['geometry']),
      name: json['formatted_address'],
      vicinity: json['vicinity'],
    );
  }
}