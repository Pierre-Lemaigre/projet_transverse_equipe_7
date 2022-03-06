import 'package:flutter/cupertino.dart';
import 'package:projet_transverse_equipe_7/model/adresse.dart';
import 'package:projet_transverse_equipe_7/model/helper/civilite.dart';
import 'package:projet_transverse_equipe_7/model/personne.dart';

class Docteur extends Personne {
  String specialite;
  Adresse adresse;
  int unique_rpps;

  Docteur(
      {required int id,
      required String nom,
      required String prenom,
      required Civilite civilite,
      required this.specialite,
      required this.adresse,
      required this.unique_rpps})
      : super(nom, prenom);

  bool exerciceAuthorized() {
    // TODO: implement exerciceAuthorized
    return true;
  }

  @override
  bool operator ==(oth) =>
      oth is Docteur &&
      nom == oth.nom &&
      prenom == oth.prenom &&
      specialite == oth.specialite &&
      adresse == oth.adresse &&
      unique_rpps == oth.unique_rpps;

  @override
  int get hashCode => hashValues(nom, prenom,
      specialite, adresse, unique_rpps);
}
