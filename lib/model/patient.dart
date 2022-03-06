import 'package:flutter/cupertino.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/personne.dart';

class Patient {
  String numSS;
  String nom;
  String prenom;

  Patient(
      {required this.nom,
      required this.prenom,
      required this.numSS});

  @override
  bool operator ==(Object other) =>
    other is Patient &&
    nom == other.nom &&
    prenom == other.prenom &&
    numSS == other.numSS;

  @override
  int get hashCode => hashValues(nom, prenom, numSS);

  Map<String, dynamic> toJson() => {
    'numSS': numSS,
    'nom': nom,
    'prenom': prenom
  };
}
